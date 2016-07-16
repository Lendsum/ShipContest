using Duality;
using Duality.Components;
using Duality.Components.Renderers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Duality.Component;

namespace naves
{
    [RequiredComponent(typeof(Transform)), RequiredComponent(typeof(TextRenderer))]
    public class ScoreText :  Component, ICmpUpdatable, ICmpInitializable
    {
        private GameObject camera;

        private string text;
        public bool changed = false;
        private TextRenderer textRender;
        private MothershipController mother1;
        private MothershipController mother2;

        private MothershipController destroyed;

        public string Text { get { return this.text; } set { changed = true; text = value; } }

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate) return;
            this.camera = this?.GameObj?.ParentScene?.FindGameObject<Camera>();
            this.textRender=this?.GameObj?.GetComponent<TextRenderer>();
            this.Text = "Dead: ";

            var motherships = this.GameObj.ParentScene.FindGameObjects<MothershipController>().ToArray();

            if (motherships != null && motherships.Count() == 2)
            {
                this.mother1 = motherships[1].GetComponent<MothershipController>();
                this.mother2 = motherships[0].GetComponent<MothershipController>();
            }
        }

        public void OnShutdown(ShutdownContext context)
        {

        }

        public void OnUpdate()
        {
            this.GameObj.Transform.Pos = new Vector3(this.camera.Transform.Pos.Xy);
            this.GameObj.Transform.Pos = this.GameObj.Transform.Pos - new Vector3(-100, -100, 0);

            this.Text = this.mother1.Almirant.Name +  ":" + this.mother1.Life.ToString() + " - "+ this.mother2.Almirant.Name +": " + this.mother2.Life;

            if (destroyed == null) {
                if (this.mother1.Life < 0)
                {
                    this.destroyed = this.mother1;
                }
                if (this.mother2.Life < 0)
                {
                    this.destroyed = this.mother2;
                }
            }

            if (destroyed!=null)
            {
                this.Text += "-->" + destroyed.Almirant.Name + " destroyed";
            }

            if (changed)
            {
                this.textRender.Text.SourceText = this.text;
                changed = false;
            }
        }
    }
}

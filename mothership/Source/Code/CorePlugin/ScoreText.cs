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

        public string Text { get { return this.text; } set { changed = true; text = value; } }

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate) return;
            this.camera = this?.GameObj?.ParentScene?.FindGameObject<Camera>();
            this.textRender=this?.GameObj?.GetComponent<TextRenderer>();
            this.Text = "Dead: ";
        }

        public void OnShutdown(ShutdownContext context)
        {

        }

        public void OnUpdate()
        {
            this.GameObj.Transform.Pos = new Vector3(this.camera.Transform.Pos.Xy);
            this.GameObj.Transform.Pos = this.GameObj.Transform.Pos - new Vector3(-100, -100, 0);

            if (changed)
            {
                this.textRender.Text.SourceText = this.text;
                changed = false;
            }
        }
    }
}

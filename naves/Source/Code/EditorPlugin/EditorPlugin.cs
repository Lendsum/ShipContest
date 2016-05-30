using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality.Editor;

namespace naves.Editor
{
	/// <summary>
	/// Defines a Duality editor plugin.
	/// </summary>
    public class navesEditorPlugin : EditorPlugin
	{
		public override string Id
		{
			get { return "navesEditorPlugin"; }
		}
	}
}

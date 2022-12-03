using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034
{
    public partial class GS_Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Cookies["Gemstones_BCSF19E034"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("GS_LoginForm.aspx");
        }
    }
}
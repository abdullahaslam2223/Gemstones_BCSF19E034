using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034
{
    public partial class GS_LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Request.Cookies["Gemstones_BCSF19E034"] != null)
            {
                Session["user_id"] = Request.Cookies["Gemstones_BCSF19E034"]["user_id"];
                Session["user_email"] = Request.Cookies["Gemstones_BCSF19E034"]["user_email"];
                Session.Timeout = 720;
                Response.Redirect("GS_HomePage.aspx");
            }
        }

        protected void Login_Submit_Btn_Click(object sender, EventArgs e)
        {
            using(Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var result = db.GS_Admin_DoLogin(Login_Email.Text, Encryption.EncodePasswordToBase64(Login_Password.Text)).ToList();
                if (result.Count > 0)
                {
                    Session["user_id"] = result[0].user_id;
                    Session["user_email"] = result[0].user_email;
                    Session.Timeout = 720;

                    Response.Cookies["Gemstones_BCSF19E034"]["user_id"] = result[0].user_id.ToString();
                    Response.Cookies["Gemstones_BCSF19E034"]["user_email"] = result[0].user_email;
                    Response.Cookies["Gemstones_BCSF19E034"].Expires = DateTime.Now.AddDays(2);

                    Login_Error.InnerHtml = "";
                    Response.Redirect("GS_HomePage.aspx");
                }
                else
                {
                    Login_Error.InnerHtml = "<div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">Invalid Cradentials</div>";
                }
            }
        }
    }
}
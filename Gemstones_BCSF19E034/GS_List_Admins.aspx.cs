using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034
{
    public partial class GS_List_Admins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FillAdmins();
            }
        }

        protected void FillAdmins()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var admins = db.GS_Get_Admins();
                GV_Admins.DataSource = admins;
                GV_Admins.DataBind();
            }
        }

        protected void GV_Admins_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_Admins_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }

        protected void GV_Admins_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Response.Redirect("GS_ManageAdmins.aspx?id=" + e.CommandArgument);
            }
            else
            {
                using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
                {
                    db.GS_Delete_Admin(Convert.ToInt32(e.CommandArgument));
                }
                FillAdmins();
            }
        }
    }
}
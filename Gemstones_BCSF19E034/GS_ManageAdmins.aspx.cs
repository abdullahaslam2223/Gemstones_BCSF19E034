using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034
{
	public partial class GS_ManageAdmins : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
			if (IsPostBack) return;
			using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
			{
				if (Request.QueryString["id"] != null)
				{
					int admin_id = Convert.ToInt32(Request.QueryString["id"]);
					tbl_admin_users admin = db.tbl_admin_users.FirstOrDefault(v => v.user_id == admin_id);
					Admin_First_Name.Text = admin.user_firstName;
					Admin_Last_Name.Text = admin.user_lastName;
					Admin_Email.Text = admin.user_email;
					Admin_Password.Text = admin.user_password;
					Admin_Conf_Password.Text = admin.user_password;
				}
			}
        }

        protected void btn_Admin_Click(object sender, EventArgs e)
		{
			using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
			{
				if (Request.QueryString["id"] != null)
				{
                    int admin_id = Convert.ToInt32(Request.QueryString["id"]);
					tbl_admin_users admin = db.tbl_admin_users.FirstOrDefault(v => v.user_id == admin_id);
					admin.user_firstName = Admin_First_Name.Text;
                    admin.user_lastName = Admin_Last_Name.Text;
					admin.user_email = Admin_Email.Text;
                    admin.user_password = Admin_Password.Text;
                    admin.user_password = Admin_Conf_Password.Text;
                    admin.status = true;
                    db.SaveChanges();
                    Admin_Success.InnerHtml = "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">Admin edited successfully</div>";
                }
				else
				{
                    tbl_admin_users admin = new tbl_admin_users();
                    admin.user_firstName = Admin_First_Name.Text;
                    admin.user_lastName = Admin_Last_Name.Text;
                    admin.user_email = Admin_Email.Text;
                    admin.user_password = Admin_Password.Text;
                    admin.status = true;
                    db.tbl_admin_users.Add(admin);
                    db.SaveChanges();
                    Admin_Success.InnerHtml = "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">Admin added successfully</div>";
                }
            }
			Response.Redirect("GS_List_Admins.aspx");
		}
	}
}
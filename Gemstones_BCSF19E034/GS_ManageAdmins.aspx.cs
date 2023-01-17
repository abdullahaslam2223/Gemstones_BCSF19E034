using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Security.Policy;
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
					//Admin_Password.Text = Encryption.DecodeFrom64(admin.user_password);
					//Admin_Conf_Password.Text = Encryption.DecodeFrom64(admin.user_password);
                    Admin_Image_Display.ImageUrl = Configurations.AdminImagePath + admin.image_name;
                }
			}
        }

        protected void btn_Admin_Click(object sender, EventArgs e)
		{
            if (Admin_Image.HasFile)
            {
				Admin_Image.SaveAs(MapPath("/assets/images/admins/" + Admin_Image.FileName));
            }
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
			{
				if (Request.QueryString["id"] != null)
				{
                    string email = Admin_Email.Text;
                    int admin_id = Convert.ToInt32(Request.QueryString["id"]);
                    tbl_admin_users em = db.tbl_admin_users.FirstOrDefault(v => v.user_email == email && admin_id != v.user_id);
                    if (em != null)
                    {
                        EmailExist.Text = "Email already exist!";
                        return;
                    }
					tbl_admin_users admin = db.tbl_admin_users.FirstOrDefault(v => v.user_id == admin_id);
					admin.user_firstName = Admin_First_Name.Text;
                    admin.user_lastName = Admin_Last_Name.Text;
					admin.user_email = Admin_Email.Text;
                    admin.user_password = Encryption.EncodePasswordToBase64(Admin_Password.Text);
                    admin.status = true;
                    if (Admin_Image.HasFile)
                    {
                        admin.image_name = Admin_Image.FileName;
                    }
                    else
                    {
                        admin.image_name = admin.image_name;
                    }
                    db.SaveChanges();
                    Admin_Success.InnerHtml = "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">Admin edited successfully</div>";
                }
				else
				{
					string email = Admin_Email.Text;
					tbl_admin_users em = db.tbl_admin_users.FirstOrDefault(v => v.user_email == email);
					if(em != null)
					{
						EmailExist.Text = "Email already exist!";
                        return;
					}

                    tbl_admin_users admin = new tbl_admin_users();
                    admin.user_firstName = Admin_First_Name.Text;
                    admin.user_lastName = Admin_Last_Name.Text;
                    admin.user_email = Admin_Email.Text;
                    admin.user_password = Encryption.EncodePasswordToBase64(Admin_Password.Text);
                    admin.status = true;
                    admin.image_name = Admin_Image.HasFile ? Admin_Image.FileName : null;
                    db.tbl_admin_users.Add(admin);
                    db.SaveChanges();
                    Admin_Success.InnerHtml = "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">Admin added successfully</div>";
                }
            }
			Response.Redirect("GS_List_Admins.aspx");
		}
	}
}
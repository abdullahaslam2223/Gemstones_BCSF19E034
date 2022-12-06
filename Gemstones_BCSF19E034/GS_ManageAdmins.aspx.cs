using System;
using System.Collections.Generic;
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

		}

		protected void btn_Add_Admin_Click(object sender, EventArgs e)
		{
			using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
			{
				tbl_admin_users record = new tbl_admin_users();
                record.user_firstName = Add_Admin_First_Name.Text;
                record.user_lastName = Add_Admin_Last_Name.Text;
                record.user_email = Add_Admin_Email.Text;
                record.user_password = Add_Admin_Password.Text;
				record.status = true;
				db.tbl_admin_users.Add(record);
				db.SaveChanges();
                Add_Admin_Success.InnerHtml = "<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">Admin added successfully</div>";
            }
		}
	}
}
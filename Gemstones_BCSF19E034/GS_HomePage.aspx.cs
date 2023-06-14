using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("GS_LoginForm.aspx");
            }
            Load_User_Orders();
        }

        private void Load_User_Orders()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities()) {
                var query = from m in db.tbl_orders_main
                             join d in db.tbl_orders_details on m.customer_id equals d.customer_id
                             join p in db.tbl_products_stone on d.product_id equals p.stone_id
                             select new
                             {
                                 m.customer_first_name,
                                 m.customer_last_name,
                                 m.customer_billing_address,
                                 m.customer_email,
                                 m.customer_phone,
                                 d.product_price,
                                 p.stone_name,
                                 p.stone_image_url
                             };

                var results = query.ToList();
                orderDetailsRepeater.DataSource = results;
                orderDetailsRepeater.DataBind();
            }
        }
    }
}
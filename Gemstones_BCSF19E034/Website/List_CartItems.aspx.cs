using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034.Website
{
    public partial class List_CartItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            Fill_Products();
        }

        private void Fill_Products()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                if (Request.Cookies["Gemstones_BCSF19E034_Website"] != null)
                {
                    string unique_key = Request.Cookies["Gemstones_BCSF19E034_Website"]["unique_id"];
                    var result = db.Web_Get_Cart_Products(unique_key).ToList();
                    if (result.Count > 0)
                    {
                        GV_Cart_Items.DataSource = result;
                        GV_Cart_Items.DataBind();
                    }
                    int total_price = 0;
                    foreach(var r in result)
                    {
                        total_price += Convert.ToInt32(r.stone_price);
                    }
                    string formated_price = total_price.ToString("N1", CultureInfo.CreateSpecificCulture("hi-IN"));
                    Total_Price.InnerText = "Total : Rs " + formated_price;
                }
            }
        }

        protected void GV_Cart_Items_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "delete")
            {
                using(Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
                {
                    db.Web_Delete_Cart_Product(Convert.ToInt32(e.CommandArgument));
                    Remove_Cart_Item_Response.Text = "<div class=\"alert alert-info mt-2 alert-dismissible fade show\" role=\"alert\">Cart Item Removed!</div>";
                }
            }
            Fill_Products();
        }

        protected void GV_Cart_Items_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}
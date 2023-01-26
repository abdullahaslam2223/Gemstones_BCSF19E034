using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace Gemstones_BCSF19E034.Website
{
    public partial class Products_Archive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            Fill_Categories();
            Fill_Products();
        }
        private void Fill_Categories()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var result = (from c in db.tbl_stone_categories select c).ToList();
                if (result.Count > 0)
                {
                    DL_Product_Archive_Categories.DataSource = result;
                    DL_Product_Archive_Categories.DataBind();
                }
                else
                {
                    No_Categories.InnerText = "No Category";
                }
            }
        }
        private void Fill_Products()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                if(Request.QueryString["cid"] != null)
                {
                    int category_id;
                    if (int.TryParse(Request.QueryString["cid"],out category_id))
                    {
                        category_id = Convert.ToInt32(Request.QueryString["cid"]);
                        var cresult = (from p in db.tbl_products_stone where p.stone_category_id == category_id select p).ToList();
                        if (cresult.Count > 0)
                        {
                            DL_Products_Archive_Data.DataSource = cresult;
                            DL_Products_Archive_Data.DataBind();
                        }
                        else
                        {
                            No_Products.InnerText = "No products found";
                        }
                    }
                } else
                {
                    var result = (from p in db.tbl_products_stone select p).ToList();
                    if (result.Count > 0)
                    {
                        DL_Products_Archive_Data.DataSource = result;
                        DL_Products_Archive_Data.DataBind();
                    }
                    else
                    {
                        No_Products.InnerText = "No products found";
                    }
                }
            }
        }

        protected void Product_Add_Cart_Btn_Command(object sender, CommandEventArgs e)
        {
            using(Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                tbl_add_to_cart_temp tmp = new tbl_add_to_cart_temp();
                tmp.product_id = Convert.ToInt64(((string)e.CommandArgument).ToString());
                tmp.user_unique_key = Request.Cookies["Gemstones_BCSF19E034_Website"]["unique_id"];
                tmp.created_at = DateTime.Now;
                db.tbl_add_to_cart_temp.Add(tmp);
                db.SaveChanges();
            }
        }
    }
}
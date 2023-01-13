using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                    GV_Product_Archive_Categories.DataSource = result;
                    GV_Product_Archive_Categories.DataBind();
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
                var result = db.GS_Get_Products().ToList();
                if(result.Count > 0)
                {
                    GV_Products_Archive_Data.DataSource = result;
                    GV_Products_Archive_Data.DataBind();
                } else
                {
                    No_Products.InnerText = "No products found";
                }
            }
        }
    }
}
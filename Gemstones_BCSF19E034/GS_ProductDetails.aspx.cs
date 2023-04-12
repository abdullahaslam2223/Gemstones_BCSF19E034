using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034
{
    public partial class GS_ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillProducts();
        }

        protected void FillProducts()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var products = db.GS_Get_Products().ToList();
                if (products.Count > 0)
                {
                    DL_Product_Details.DataSource = products;
                    DL_Product_Details.DataBind();
                }
                else
                {
                    // No_Products.InnerHtml = "There are no products found";
                }
            }
        }
    }
}
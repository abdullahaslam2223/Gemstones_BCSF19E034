using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034
{
    public partial class GS_List_Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            FillProducts();
            //EnableJQueryDataTableForGridView();
        }

        protected void EnableJQueryDataTableForGridView()
        {
            using(Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var products = db.GS_Get_Products().ToList();
                if(products.Count > 0)
                {
                    GV_Products.UseAccessibleHeader = true;
                    GV_Products.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
        }
        protected void FillProducts()
        {
            using(Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var products = db.GS_Get_Products().ToList();
                if(products.Count > 0)
                {
                    GV_Products.DataSource = products;
                    GV_Products.DataBind();
                }
                else
                {
                    No_Products.InnerHtml = "There are no products found";
                }
            }
        }

        protected void GV_Products_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                Response.Redirect("GS_ManageProducts.aspx?id=" + e.CommandArgument);
            }
            else if (e.CommandName == "delete")
            {
                using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
                {
                    int ProductID = Convert.ToInt32(e.CommandArgument);
                    var ExistInCart = (from p in db.tbl_add_to_cart_temp where p.product_id == ProductID select p).ToList();
                    var ExistInOrder = (from p in db.tbl_orders_details where p.product_id == ProductID select p).ToList();
                    if(ExistInCart.Count > 0 || ExistInOrder.Count > 0)
                    {
                        Delete_Product_Response.Text = "You can't delete this product because either it's exist in cart or is in order processing";
                        return;
                    }
                    db.GS_Delete_Product(ProductID);
                }
                FillProducts();
            }
        }

        protected void GV_Products_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_Products_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}
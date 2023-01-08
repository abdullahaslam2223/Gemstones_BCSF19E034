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
            EnableJQueryDataTableForGridView();
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
            else
            {
                using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
                {
                    db.GS_Delete_Product(Convert.ToInt32(e.CommandArgument));

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
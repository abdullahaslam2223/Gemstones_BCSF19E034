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
        }
        protected void FillProducts()
        {
            using(Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var products = db.GS_Get_Products();
                GV_Products.DataSource = products;
                GV_Products.DataBind();
            }
        }

        protected void GV_Products_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Response.Write("<alert>Action performed</alert>");
        }

        protected void GV_Products_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GV_Products_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}
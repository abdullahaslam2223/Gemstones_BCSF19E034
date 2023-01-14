using System;
using System.Collections.Generic;
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
            using(Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                if(Request.Cookies["Gemstones_BCSF19E034_Website"] != null)
                {
                    string unique_key = Request.Cookies["Gemstones_BCSF19E034_Website"]["unique_id"];
                    var result = db.Web_Get_Cart_Products(unique_key).ToList();
                    if (result.Count > 0)
                    {
                        GV_Cart_Items.DataSource = result;
                        GV_Cart_Items.DataBind();
                    }
                }                
            }
        }
    }
}
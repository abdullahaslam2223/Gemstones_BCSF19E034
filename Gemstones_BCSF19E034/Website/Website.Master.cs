using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Threading.Tasks;
using System.Text;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Gemstones_BCSF19E034.Website
{
    public partial class Website : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Store_ID_In_Cookies();
        }

        private string Genereate_Unique_ID()
        {
            Guid guid = Guid.NewGuid();
            string str = guid.ToString();
            return str;
        }

        private void Store_ID_In_Cookies()
        {
            if (IsPostBack) return;
            if(Request.Cookies["Gemstones_BCSF19E034_Website"] == null)
            {
                Response.Cookies["Gemstones_BCSF19E034_Website"]["unique_id"] = Genereate_Unique_ID();
                Response.Cookies["Gemstones_BCSF19E034_Website"].Expires = DateTime.Now.AddDays(3);
            }
        }
    }
}
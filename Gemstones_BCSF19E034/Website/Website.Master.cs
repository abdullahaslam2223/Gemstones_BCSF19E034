using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Threading.Tasks;

namespace Gemstones_BCSF19E034.Website
{
    public partial class Website : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Store_ID_In_Cookies();
            AddChatbotResponse("How can I help you Abdullah?");
            AddUserResponse("How many products are there on your website?");
        }

        private void AddChatbotResponse(string message)
        {
            LiteralControl html = new LiteralControl($@"
            <div class=""d-flex flex-row justify-content-start"">
                <img src=""https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3-bg.webp""
                    alt=""avatar 1"" style=""width: 45px; height: 100%;"">
                <div>
                    <p class=""small p-2 ms-3 mb-1 rounded-3"" style=""background-color: #f5f6f7;"">{message}</p>
                </div>
            </div>");

            // Find the panel by its ID
            Panel panel = FindControlRecursive(Page, "ChatbotResponses") as Panel;

            if (panel != null)
            {
                // Append the HTML code to the panel's Controls collection
                panel.Controls.Add(html);
            }
        }

        private void AddUserResponse(string message)
        {
            LiteralControl html = new LiteralControl($@"
            <div class=""d-flex flex-row justify-content-end mb-4 pt-3"">
                <div>
                    <p class=""small p-2 me-3 mb-1 text-white rounded-3 bg-primary"">{message}</p>
                </div>
                <img src=""https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava4-bg.webp""
                    alt=""avatar 1"" style=""width: 45px; height: 100%;"">
            </div>");

            // Find the panel by its ID
            Panel panel = FindControlRecursive(Page, "ChatbotResponses") as Panel;

            if (panel != null)
            {
                // Append the HTML code to the panel's Controls collection
                panel.Controls.Add(html);
            }
        }

        private Control FindControlRecursive(Control control, string id)
        {
            if (control.ID == id)
            {
                return control;
            }

            foreach (Control child in control.Controls)
            {
                Control foundControl = FindControlRecursive(child, id);
                if (foundControl != null)
                {
                    return foundControl;
                }
            }

            return null;
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

    public class Example
    {
        public static async Task<string> CallAPI()
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://jsonplaceholder.typicode.com/");

                var response = await client.GetAsync("todos/1");
                response.EnsureSuccessStatusCode();
                var result = await response.Content.ReadAsStringAsync();

                return result;
            }
        }
    }
}
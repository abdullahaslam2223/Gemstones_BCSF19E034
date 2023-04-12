using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] == null)
            {
                Response.Redirect("GS_LoginForm.aspx");
            }
            User_Email_Info.InnerText = "Signed In as " + Session["user_email"];
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                int user_id = Convert.ToInt32(Session["user_id"]);
                var image_url = (from i in db.tbl_admin_users where i.user_id == user_id select i.image_name).ToList();
                if(image_url.Count > 0)
                {
                    user_profile_image.ImageUrl = Configurations.AdminImagePath + image_url[0];
                }
            }
        }
    }

    public class Encryption
    {
        public static string EncodePasswordToBase64(string password)
        {
            try
            {
                byte[] encData_byte = new byte[password.Length];
                encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
                string encodedData = Convert.ToBase64String(encData_byte);
                return encodedData;
            }
            catch (Exception ex)
            {
                throw new Exception("Error in base64Encode" + ex.Message);
            }
        }

        //this function Convert to Decord your Password
        public static string DecodeFrom64(string encodedData)
        {
            System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();
            System.Text.Decoder utf8Decode = encoder.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encodedData);
            int charCount = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            string result = new String(decoded_char);
            return result;
        }
    }

    public class Configurations
    {
        public static string ImagePath = "~/assets/images/products/";
        public static string AdminImagePath = "~/assets/images/admins/";
    }
}
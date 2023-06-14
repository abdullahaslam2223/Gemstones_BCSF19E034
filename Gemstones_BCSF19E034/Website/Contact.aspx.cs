using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034.Website
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                string name = contactName.Text;
                string email = contactEmail.Text;
                string subject = contactSubject.Text;
                string message = contactMessage.Text;
                string emailMessage = "Name : " + name + "      " + "Email : " + email + "      " + "Subject" + " : " + subject + "      " + "Message : " + message;
                if (Email.SendEmail("mabdullahaslamth@gmail.com", "Contact Form", emailMessage, "", ""))
                {
                    Contact_Response.Text = "<div class=\"alert alert-success mt-2 alert-dismissible fade show\" role=\"alert\">Your message is conveyed, we will let you know as soon as possible.</div>";
                }
                else
                {
                    Contact_Response.Text = "<div class=\"alert alert-danger mt-2 alert-dismissible fade show\" role=\"alert\">There is something went wrong</div>";
                }
            }
        }

        public class Email
        {
            public static bool SendEmail(string toadd, string subject, string msg, string cc = "", string bcc = "")
            {
                MailMessage message = new MailMessage();
                SmtpClient client = new SmtpClient();
                try
                {
                    string SendingEmail = "", MailServer = "", SendingPassword = "";
                    SendingEmail = "gemstonesbcsf19e034@gmail.com";
                    MailServer = "smtp.gmail.com";
                    SendingPassword = "iieazbuyagwxqcfg";
                    int ServerPort = 587;
                    message.IsBodyHtml = true;

                    message.From = new MailAddress(SendingEmail, "Gemstones");

                    if (toadd.Contains(","))
                    {
                        string[] arrto = toadd.Split(',');
                        for (int i = 0; i <= arrto.Length - 1; i++)
                        {
                            if (!string.IsNullOrEmpty(arrto[i].Trim()))
                            {
                                message.To.Add(new MailAddress(arrto[i].Trim()));
                            }
                        }
                    }
                    else
                    {
                        message.To.Add(new MailAddress(toadd.ToString()));
                    }

                    if (!string.IsNullOrEmpty(cc))
                    {
                        message.CC.Add(new MailAddress(cc.ToString()));
                    }

                    if (!string.IsNullOrEmpty(bcc))
                    {
                        message.Bcc.Add(new MailAddress(bcc.ToString()));
                    }
                    message.Body = msg;
                    message.Subject = subject;

                    client.Host = MailServer;
                    client.Port = ServerPort;
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = true;
                    client.Credentials = new System.Net.NetworkCredential(SendingEmail, SendingPassword);

                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(message);
                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
                finally
                {
                    message = null;
                    client = null;
                }
            }
        }
    }
}
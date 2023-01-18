using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034.Website
{
    public partial class ManageCheckout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Customer_Place_Order_Btn_Click(object sender, EventArgs e)
        {
            using(Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                tbl_orders_main customer = new tbl_orders_main();
                customer.customer_first_name = Customer_First_Name.Text;
                customer.customer_last_name = Customer_Last_Name.Text;
                customer.customer_billing_address = Customer_Billing_Address.Text;
                //string.IsNullOrEmpty();
                customer.customer_email = Customer_Email.Text;
                customer.customer_phone = Customer_Phone.Text;
                customer.customer_additional_info = Customer_Additional_Info.Text;
                customer.created_at = DateTime.Now;
                db.tbl_orders_main.Add(customer);
                db.SaveChanges();

                if (Request.Cookies["Gemstones_BCSF19E034_Website"] != null)
                {
                    tbl_orders_details details = new tbl_orders_details();
                    string unique_key = Request.Cookies["Gemstones_BCSF19E034_Website"]["unique_id"];
                    var result = db.Web_Get_Cart_Products(unique_key).ToList();
                    if (result.Count > 0)
                    {
                        tbl_products_stone stone = null;
                        foreach (var r in result)
                        {
                            details.product_id = r.stone_id;
                            details.product_price = r.stone_price;
                            details.customer_id = customer.customer_id;
                            db.tbl_orders_details.Add(details);

                            // Managing Product Quantity when order is placed!
                            stone = db.tbl_products_stone.FirstOrDefault(v => v.stone_id == details.product_id);
                            stone.stone_quantity = stone.stone_quantity - 1;
                            db.SaveChanges();
                        }
                    }

                    // Deleting Products when order is completed
                    db.Web_Delete_All_Cart_Products(unique_key);


                }



                Place_Order_Response.Text = "<div class=\"alert alert-success mt-2 alert-dismissible fade show\" role=\"alert\">Your order has been placed successfully!</div>";
                if(Customer_Email.Text != null)
                {
                    string message = "Your order has been placed successfully & your order id " + customer.customer_id;
                    Email.SendEmail(Customer_Email.Text, Customer_First_Name.Text, message, "", "");
                }
            }
        }
    }
}
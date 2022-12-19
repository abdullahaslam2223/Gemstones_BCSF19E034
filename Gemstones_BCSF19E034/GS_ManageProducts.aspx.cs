using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034
{
    public partial class GS_ManageProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (IsPostBack) return;
            Get_Categories();
            Get_Colors();
            Get_Shapes();
            Get_Sizes();
        }

        protected void Get_Categories()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var categories = (from c in db.tbl_stone_categories select c).ToList();

                if(categories.Count > 0)
                {
                    Product_Stone_Category.DataSource = categories;
                    Product_Stone_Category.DataValueField = "category_id";
                    Product_Stone_Category.DataTextField = "category_name";
                    Product_Stone_Category.DataBind();
                    Product_Stone_Category.Items.Insert(0, new ListItem("Select Category", "0"));
                    Product_Stone_Category.Items[0].Attributes.Add("Disabled", "Disabled");
                    Product_Stone_Category.Items[0].Attributes.Add("Selected", "True");
                }
            }
        }

        protected void Get_Colors()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var colors = (from c in db.tbl_stone_colors select c).ToList();

                if (colors.Count > 0)
                {
                    Product_Stone_Color.DataSource = colors;
                    Product_Stone_Color.DataValueField = "color_id";
                    Product_Stone_Color.DataTextField = "color_name";
                    Product_Stone_Color.DataBind();
                    Product_Stone_Color.Items.Insert(0, new ListItem("Select Color", "0"));
                    Product_Stone_Color.Items[0].Attributes.Add("Disabled", "Disabled");
                    Product_Stone_Color.Items[0].Attributes.Add("Selected", "True");
                }
            }
        }
        protected void Get_Shapes()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var shapes = (from s in db.tbl_stone_shapes select s).ToList();

                if (shapes.Count > 0)
                {
                    Product_Stone_Shape.DataSource = shapes;
                    Product_Stone_Shape.DataValueField = "shape_id";
                    Product_Stone_Shape.DataTextField = "shape_name";
                    Product_Stone_Shape.DataBind();
                    Product_Stone_Shape.Items.Insert(0, new ListItem("Select Shape", "0"));
                    Product_Stone_Shape.Items[0].Attributes.Add("Disabled", "Disabled");
                    Product_Stone_Shape.Items[0].Attributes.Add("Selected", "True");
                }
            }
        }
        protected void Get_Sizes()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var sizes = (from s in db.tbl_stone_sizes select s).ToList();

                if (sizes.Count > 0)
                {
                    Product_Stone_Size.DataSource = sizes;
                    Product_Stone_Size.DataValueField = "size_id";
                    Product_Stone_Size.DataTextField = "size_name";
                    Product_Stone_Size.DataBind();
                    Product_Stone_Size.Items.Insert(0, new ListItem("Select Size", "0"));
                    Product_Stone_Size.Items[0].Attributes.Add("Disabled", "Disabled");
                    Product_Stone_Size.Items[0].Attributes.Add("Selected", "True");
                }
            }
        }

        protected void Add_Product_Btn_Click(object sender, EventArgs e)
        {
            //Response.Write("<h1 style='mt-5'>" + Product_Stone_Category.SelectedIndex + "</h1>");
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                tbl_products_stone stone = new tbl_products_stone();
                stone.stone_name = Product_Stone_Name.Text;
                stone.stone_price = Convert.ToInt32(Product_Stone_Price.Text);
                stone.stone_description = Product_Stone_Description.Text;
                stone.stone_category_id = Product_Stone_Category.SelectedIndex;
                stone.stone_color_id = Product_Stone_Color.SelectedIndex;
                stone.stone_weight = Convert.ToInt32(Product_Stone_Weight.Text);
                stone.stone_hardness = Convert.ToInt32(Product_Stone_Hardness.Text);
                stone.stone_shape_id = Product_Stone_Shape.SelectedIndex;
                stone.stone_origin = Product_Stone_Origin.Text;
                stone.stone_size_id = Product_Stone_Size.SelectedIndex;
                stone.stone_dispersion = Convert.ToInt32(Product_Stone_Dispersion.Text);
                stone.stone_specific_gravity = Convert.ToInt32(Product_Stone_SpecificGravity.Text);
                stone.stone_density = Convert.ToInt32(Product_Stone_Density.Text);

                db.tbl_products_stone.Add(stone);
                db.SaveChanges();
                Add_Product_Response.Text = "Product added successfully";
            }
        }
    }
}
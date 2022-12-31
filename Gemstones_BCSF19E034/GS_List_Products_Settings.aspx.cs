using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gemstones_BCSF19E034
{
    public partial class GS_List_Products_Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //MakingGVCompatibleWithDataTables();
            if (IsPostBack) return;
            FillAllData();
        }

        protected void MakingGVCompatibleWithDataTables()
        {
            GV_Categories.UseAccessibleHeader = true;
            GV_Categories.HeaderRow.TableSection = TableRowSection.TableHeader;

            GV_Colors.UseAccessibleHeader = true;
            GV_Colors.HeaderRow.TableSection = TableRowSection.TableHeader;

            GV_Shapes.UseAccessibleHeader = true;
            GV_Shapes.HeaderRow.TableSection = TableRowSection.TableHeader;

            GV_Sizes.UseAccessibleHeader = true;
            GV_Sizes.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        protected void FillAllData()
        {
            FillCategories();
            FillColors();
            FillShapes();
            FillSizes();
        }
        protected void FillCategories()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var categories = (from c in db.tbl_stone_categories select c).ToList();

                if (categories.Count > 0)
                {
                    GV_Categories.DataSource = categories;
                    GV_Categories.DataBind();
                }
            }
        }

        protected void FillColors()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var colors = (from c in db.tbl_stone_colors select c).ToList();

                if (colors.Count > 0)
                {
                    GV_Colors.DataSource = colors;
                    GV_Colors.DataBind();
                }
            }
        }

        protected void FillShapes()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var shapes = (from s in db.tbl_stone_shapes select s).ToList();

                if (shapes.Count > 0)
                {
                    GV_Shapes.DataSource = shapes;
                    GV_Shapes.DataBind();
                }
            }
        }

        protected void FillSizes()
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                var sizes = (from s in db.tbl_stone_sizes select s).ToList();

                if (sizes.Count > 0)
                {
                    GV_Sizes.DataSource = sizes;
                    GV_Sizes.DataBind();
                }
            }
        }

        protected void SuccessMessage(Label ID, string Message)
        {
            ID.Text = Message;
            ID.ForeColor = System.Drawing.Color.Green;
        }

        protected void ErrorMessage(Label ID, string Message)
        {
            ID.Text = Message;
            ID.ForeColor = System.Drawing.Color.Red;
        }

        protected void GV_Categories_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }

        protected void GV_Categories_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                int category_id = Convert.ToInt32(e.CommandArgument);
                var products = (from p in db.tbl_products_stone where p.stone_category_id == category_id select p).ToList();
                if(products.Count > 0)
                {
                    ErrorMessage(GV_Categories_Responses, "Please first delete those products which are using this category!");
                    return;
                }
                db.GS_Delete_Product_Category(category_id);
                SuccessMessage(GV_Categories_Responses, "Deleted Successfully!");
            }
            FillCategories();
        }

        protected void GV_Colors_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_Colors_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                int color_id = Convert.ToInt32(e.CommandArgument);
                var products = (from p in db.tbl_products_stone where p.stone_color_id == color_id select p).ToList();
                if (products.Count > 0)
                {
                    ErrorMessage(GV_Colors_Responses, "Please first delete those products which are using this color!");
                    return;
                }
                db.GS_Delete_Product_Color(color_id);
                SuccessMessage(GV_Colors_Responses, "Deleted Successfully!");
            }
            FillColors();
        }

        protected void GV_Shapes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_Shapes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                int shape_id = Convert.ToInt32(e.CommandArgument);
                var products = (from p in db.tbl_products_stone where p.stone_shape_id == shape_id select p).ToList();
                if (products.Count > 0)
                {
                    ErrorMessage(GV_Shapes_Responses, "Please first delete those products which are using this shape!");
                    return;
                }
                db.GS_Delete_Product_Shape(shape_id);
                SuccessMessage(GV_Shapes_Responses, "Deleted Successfully!");
            }
            FillShapes();
        }

        protected void GV_Sizes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GV_Sizes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                int size_id = Convert.ToInt32(e.CommandArgument);
                var products = (from p in db.tbl_products_stone where p.stone_size_id == size_id select p).ToList();
                if (products.Count > 0)
                {
                    ErrorMessage(GV_Sizes_Responses, "Please first delete those products which are using this size!");
                    return;
                }
                db.GS_Delete_Product_Size(size_id);
                SuccessMessage(GV_Sizes_Responses, "Deleted Successfully!");
            }
            FillSizes();
        }

        protected void Add_New_Product_Category_Btn_Click(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(Add_New_Product_Category.Text))
            {
                ErrorMessage(GV_Categories_Responses, "Category name cannot be empty!");
                return;
            }
            using(Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                tbl_stone_categories tbl = new tbl_stone_categories();
                tbl.category_name = Add_New_Product_Category.Text;
                db.tbl_stone_categories.Add(tbl);
                db.SaveChanges();
            }
            FillCategories();
        }

        protected void Add_New_Product_Color_Btn_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Add_New_Product_Color.Text))
            {
                ErrorMessage(GV_Colors_Responses, "Color name cannot be empty!");
                return;
            }
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                tbl_stone_colors tbl = new tbl_stone_colors();
                tbl.color_name = Add_New_Product_Color.Text;
                db.tbl_stone_colors.Add(tbl);
                db.SaveChanges();
            }
            FillColors();
        }

        protected void Add_New_Product_Shape_Btn_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Add_New_Product_Shape.Text))
            {
                ErrorMessage(GV_Shapes_Responses, "Shape name cannot be empty!");
                return;
            }
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                tbl_stone_shapes tbl = new tbl_stone_shapes();
                tbl.shape_name = Add_New_Product_Shape.Text;
                db.tbl_stone_shapes.Add(tbl);
                db.SaveChanges();
            }
            FillShapes();
        }

        protected void Add_New_Product_Size_Btn_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Add_New_Product_Size.Text))
            {
                ErrorMessage(GV_Sizes_Responses, "Size name cannot be empty!");
                return;
            }
            using (Gemstones_BCSF19E034Entities db = new Gemstones_BCSF19E034Entities())
            {
                tbl_stone_sizes tbl = new tbl_stone_sizes();
                tbl.size_name = Add_New_Product_Size.Text;
                db.tbl_stone_sizes.Add(tbl);
                db.SaveChanges();
            }
            FillSizes();
        }
    }
}
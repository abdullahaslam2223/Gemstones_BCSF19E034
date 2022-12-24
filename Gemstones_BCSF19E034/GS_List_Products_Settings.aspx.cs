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
            if (IsPostBack) return;
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
    }
}
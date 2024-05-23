using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6
{
    public partial class Viewcart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                List<string> cart = (List<string>)Session["cart"];
                cartListBox.DataSource = cart;
                cartListBox.DataBind();
            }
        }

        protected void backButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void emptyButton_Click(object sender, EventArgs e)
        {
            Session["cart"] = new List<string>();
            Response.Redirect("Viewcart.aspx");
        }
    }
}
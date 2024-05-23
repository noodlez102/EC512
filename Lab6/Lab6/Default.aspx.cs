using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
            if (Session["cart"] == null)
            {
                Session["cart"] = new List<string>();
            }
            List<string> cart = (List<string>)Session["cart"];
            errorLabel.Text = cart.Count + " items in cart.";

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            List<string> cart = (List<string>)Session["cart"];

            if (store.SelectedIndex == -1)
            {
                errorLabel.Text = "Please select an item";
            }
            else
            {
                string selectedItem = store.SelectedItem.Text;
                cart.Add(selectedItem);
                Session["cart"] = cart;
                store.SelectedIndex = -1;
                errorLabel.Text = "Item added. " + cart.Count + " items in cart.";
            }
        }

        protected void viewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCart.aspx");
        }

    }
}
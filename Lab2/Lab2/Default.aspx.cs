using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            error.Controls.Clear();
        }

        protected void Convert_Click(object sender, EventArgs e)
        {
            float fahrenheit, celsius;

            error.Controls.Clear();

            if ((string.IsNullOrEmpty(Fahrenheit.Text) && string.IsNullOrEmpty(Centegrade.Text)) ||
                (!string.IsNullOrEmpty(Fahrenheit.Text) && !string.IsNullOrEmpty(Centegrade.Text)))
            {
                error.Controls.Add(new LiteralControl("Enter one value."));
            }
            else if (!string.IsNullOrEmpty(Fahrenheit.Text) && string.IsNullOrEmpty(Centegrade.Text))
            {
                try
                {
                    fahrenheit = float.Parse(Fahrenheit.Text);
                    celsius = (fahrenheit - 32) * 5 / 9;
                    Centegrade.Text = celsius.ToString("0.00");
                }
                catch (FormatException)
                {
                    error.Controls.Add(new LiteralControl("Error: Please enter a valid number for Fahrenheit."));
                }
            }
            else if (!string.IsNullOrEmpty(Centegrade.Text) && string.IsNullOrEmpty(Fahrenheit.Text))
            {
                try
                {
                    celsius = float.Parse(Centegrade.Text);
                    fahrenheit = (celsius * 9 / 5) + 32;
                    Fahrenheit.Text = fahrenheit.ToString("0.00");
                }
                catch (FormatException)
                {
                    error.Controls.Add(new LiteralControl("Error: Please enter a valid number for Celsius."));
                }
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            Fahrenheit.Text = "";
            Centegrade.Text = "";
            error.Controls.Clear();
        }
    }
}
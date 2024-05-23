using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class Lab4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConvert_Click(object sender, EventArgs e)
        {
            double inputValue2;
            if (!double.TryParse(inputValue.Text, out inputValue2))
            {
                errorMessage.Text = "Invalid input value.";
                return;
            }

            // Get the conversion factors
            double fromFactor = double.Parse(ddlFromUnit.SelectedValue);
            double toFactor = double.Parse(ddlToUnit.SelectedValue);

            // Check if the conversion is to the same unit
            if (fromFactor == toFactor)
            {
                errorMessage.Text = "Conversion to the same unit is not allowed.";
                return;
            }

            // Perform the conversion
            double result = (inputValue2 * fromFactor) / toFactor;
            outputValue.Text = result.ToString();
            errorMessage.Text = "";
        }
    }
}
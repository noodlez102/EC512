using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Canidates_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void On_Button_click(object sender, EventArgs e)
        {
            if (Canidates.SelectedItem == null)
            {
                errorMessage.Text = "Please select a candidate.";
                return; 
            }
            string selectedCandidate = Canidates.SelectedItem.Value;

            IncrementVote(selectedCandidate);
            Response.Redirect("Results.aspx");
        }

        private void IncrementVote(string candidate)
        {
            // Connection string
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            // SQL query to increment the votes for the selected candidate
            string query = "UPDATE Vote_counter SET [Votes] = [Votes] + 1 WHERE [Candidate] = @Candidate";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameter for candidate
                    command.Parameters.AddWithValue("@Candidate", candidate);

                    // Open the connection
                    connection.Open();

                    // Execute the query
                    command.ExecuteNonQuery();

                    // Close the connection
                    connection.Close();
                }
            }
        }
    }
}
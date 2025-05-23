using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance_PointLatest
{
    public partial class Receipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("login.aspx");
            if (!IsPostBack)
            {
                Random random = new Random();
                int randomno = random.Next(1000000, 9999999);
                lbltransactionid.Text = randomno.ToString();
            }
            lblpolicyno.Text = Session["PolicyNo"].ToString();
            string connectionString = "Data Source=HAPPYTUF\\MSSQLSERVER01;Initial Catalog=DemoDB;Integrated Security=True;TrustServerCertificate=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "update customer_paymentdetails set transactionId = @transactionid,status = @status where PolicyNo=" + Session["PolicyNo"].ToString();

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddWithValue("@transactionid", Session["PolicyNo"].ToString());
                        cmd.Parameters.AddWithValue("@status", "success");

                        int index = cmd.ExecuteNonQuery();

                    }
                }
                catch (SqlException ex)
                {

                }
                catch (Exception ex)
                {

                }
                finally
                {
                    con.Close();

                }

            }
        }
    }
}
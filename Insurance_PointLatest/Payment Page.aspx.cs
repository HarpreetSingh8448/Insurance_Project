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
    public partial class Payment_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("login.aspx");

        }

        protected void btnPayNow_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=HAPPYTUF\\MSSQLSERVER01;Initial Catalog=DemoDB;Integrated Security=True;TrustServerCertificate=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "insert into customer_paymentdetails([Cardnumber],[Expirydate],[Cvv],[Cardholdername],[Paymentmethod],[PolicyNo]) values(@Cardnumber,@Expirydate,@Cvv,@Cardholdername,@Paymentmethod,@Policyno)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddWithValue("@Cardnumber", txtCardNumber.Text);
                        cmd.Parameters.AddWithValue("@Expirydate", txtExpiryDate.Text);
                        cmd.Parameters.AddWithValue("@Cvv", txtCVV.Text);
                        cmd.Parameters.AddWithValue("@Cardholdername", txtCardHolder.Text);
                        cmd.Parameters.AddWithValue("@Paymentmethod", ddlPaymentMethod.Text);
                        cmd.Parameters.AddWithValue("@Policyno", Session["PolicyNo"].ToString());

                        int index = cmd.ExecuteNonQuery();
                        if (index > 0)
                        {
                            lblErrorMessage.Text = "Payment Successful";
                            Response.Redirect("Receipt.aspx");
                        }
                        else
                        {
                            lblErrorMessage.Text = "Insert failed";
                        }
                    }
                }
                catch (SqlException ex)
                {
                    lblErrorMessage.Text += ex.Message;
                }
                catch (Exception ex)
                {
                    lblErrorMessage.Text += ex.Message;
                }
                finally
                {
                    con.Close();

                }

            }
        }
    }
}
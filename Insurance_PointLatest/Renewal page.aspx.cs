using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance_PointLatest
{
    public partial class Renewal_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRenewal_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=HAPPYTUF\\MSSQLSERVER01;Initial Catalog=DemoDB;Integrated Security=True;TrustServerCertificate=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "insert into Renewal_table([Policyno],[Policytype],[Fullname],[Phoneno]) values(@Policyno,@Policytype,@Fullname,@Phoneno)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddWithValue("@policyno", txtPolicyno.Text);
                        cmd.Parameters.AddWithValue("@policytype", ddlPolicyType.Text);
                        cmd.Parameters.AddWithValue("@Fullname", txtFullname.Text);
                        cmd.Parameters.AddWithValue("@Phoneno", txtPhoneno.Text);
                      

                        int index = cmd.ExecuteNonQuery();
                        if (index > 0)
                        {
                            lblErrorMessage.Text = "Applied Succesfully";
                        }
                        else
                        {
                            lblErrorMessage.Text = "Applied failed";
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
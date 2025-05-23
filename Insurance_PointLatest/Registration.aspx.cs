using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Insurance_PointLatest
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=HAPPYTUF\\MSSQLSERVER01;Initial Catalog=DemoDB;Integrated Security=True;TrustServerCertificate=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "insert into Vcustomer_details([Firstname],[Middlename],[Lastname],[Username],[DateofBirth],[Gender],[Address],[City], [Emailid],[Phoneno],[Mobileno], [Password]) values(@Firstname,@Middlename,@Lastname,@Username,@DateofBirth,@Gender,@Address,@City,@Emailid,@Phoneno,@Mobileno,@Password)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddWithValue("@Firstname", txtFirstname.Text);
                        cmd.Parameters.AddWithValue("@Middlename", txtMiddlename.Text);
                        cmd.Parameters.AddWithValue("@Lastname", txtLastname.Text);
                        cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                        cmd.Parameters.AddWithValue("@DateofBirth", txtDateofBirth.Text);
                        cmd.Parameters.AddWithValue("@Gender", txtGender.Text);
                        cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                        cmd.Parameters.AddWithValue("@City", txtCity.Text);
                        cmd.Parameters.AddWithValue("@Emailid", txtEmailid.Text);
                        cmd.Parameters.AddWithValue("@Phoneno", txtPhoneno.Text);
                        cmd.Parameters.AddWithValue("@Mobileno", txtMobileno.Text);
                        cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                        int index = cmd.ExecuteNonQuery();
                        if (index > 0)
                        {
                            lblErrorMessage.Text = "Insert Successful";
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



    

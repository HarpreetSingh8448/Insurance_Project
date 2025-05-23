using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance_PointLatest
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string connectionString = "Data Source=HAPPYTUF\\MSSQLSERVER01;Initial Catalog=DemoDB;Integrated Security=True;TrustServerCertificate=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "select [Username],[Password] from Vcustomer_details where [Username]=@Username and Password=@Password";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                        cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            Session["Username"] = txtUsername.Text;
                            if (dr["Username"].ToString() == "admin" && txtPassword.Text == dr["Password"].ToString())
                            {
                                Response.Redirect("Customer Management.aspx");
                            }
                            else
                            Response.Redirect("Policy page.aspx");
                        }
                        else
                        {
                            lblErrorMessage.Text = "Invalid username and password";
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
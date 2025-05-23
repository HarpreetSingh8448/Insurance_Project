using Antlr.Runtime.Tree;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance_PointLatest
{
    public partial class Policy_Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("login.aspx");
            if (!IsPostBack)
            {
                Random random = new Random();
                int randomno = random.Next(1000000, 9999999);
                lblpolicyno.Text = randomno.ToString();
                Session["PolicyNo"] = randomno.ToString();
            }
        }

        protected void SubmitForm(object sender, EventArgs e)
        {
            string connectionString = "Data Source=HAPPYTUF\\MSSQLSERVER01;Initial Catalog=DemoDB;Integrated Security=True;TrustServerCertificate=True";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "insert into Hcustomer_policydetail([Policyno],[Fullname],[Emailid],[Phoneno],[Policytype]) values(@Policyno,@Fullname,@Emailid,@Phoneno,@Policytype)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddWithValue("@Policyno", lblpolicyno.Text);
                        cmd.Parameters.AddWithValue("@Fullname", fullName.Text);
                        cmd.Parameters.AddWithValue("@Emailid", email.Text);
                        cmd.Parameters.AddWithValue("@Phoneno", phone.Text);
                        cmd.Parameters.AddWithValue("@Policytype", policyType.Text);
               
                        int index = cmd.ExecuteNonQuery();
                        if (index > 0)
                        {
                            lblErrorMessage.Text = "Insert Successful";
                            Response.Redirect("Payment page.aspx");
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
        public Policy_Detail()
        {
            
        }
                      
    }
}
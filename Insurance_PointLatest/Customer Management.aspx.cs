using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Insurance_PointLatest
{
    public partial class Customer_Management : System.Web.UI.Page
    {
        SqlConnection m_conn;
        public Customer_Management()
        {

            string connectionString = "Data Source=HAPPYTUF\\MSSQLSERVER01;Initial Catalog=DemoDB;Integrated Security=True;TrustServerCertificate=True";
            SqlConnection con = new SqlConnection(connectionString);
            m_conn = con;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //this.BindGrid();
            }
        }

        private void BindGrid()
        {

            m_conn.Open();
            using (SqlCommand cmd = new SqlCommand("SELECT [Id],[Firstname],[Middlename],[Lastname],[Username],[DateofBirth],[Gender],[Address],[City],[Emailid],[Phoneno],[Mobileno] FROM  Vcustomer_details"))

            {

                using (SqlDataAdapter sda = new SqlDataAdapter())
                {

                    cmd.Connection = m_conn;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {

                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }

                }
            }
            m_conn.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}


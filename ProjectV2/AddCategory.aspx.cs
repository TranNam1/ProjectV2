using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ProjectV2
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCategoryRepeater();
        }
        private void BindCategoryRepeater()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblCategory ", conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrCategory.DataSource = dt;
                        rptrCategory.DataBind();

                    }
                }


            }
        }
        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblCategory(CatName) values('" + txtCategory.Text + "')", conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Category Added Successfully Done'); </script>");
                txtCategory.Text = string.Empty;
                conn.Close();
                txtCategory.Focus();

            }
            BindCategoryRepeater();
        }
    }
}
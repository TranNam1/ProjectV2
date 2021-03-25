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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindBrandRepeater();
        }

        private void BindBrandRepeater()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblBrands ", conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrBrand.DataSource = dt;
                        rptrBrand.DataBind();

                    }
                }
                

            }
        }
        protected void btnAddBrand_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblBrands(Name) values('" + txtBrand.Text + "')", conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Brand Added Successfully Done'); </script>");
                txtBrand.Text = string.Empty;
                conn.Close();
                txtBrand.Focus();

            }
            BindBrandRepeater();
        }
    }
}
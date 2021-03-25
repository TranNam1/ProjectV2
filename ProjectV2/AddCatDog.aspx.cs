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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindAnimalRepeater();
        }
        private void BindAnimalRepeater()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblCatDog ", conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrAnimal.DataSource = dt;
                        rptrAnimal.DataBind();

                    }
                }


            }
        }
        protected void btnAddBrand_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblCatDog(CatDogName) values('" + txtAnimal.Text + "')", conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Added Successfully Done'); </script>");
                txtAnimal.Text = string.Empty;
                conn.Close();
                txtAnimal.Focus();

            }
            BindAnimalRepeater();

        }
    }
}
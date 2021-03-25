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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMainCat();
                BindSubCategoryRepeater();
            }
        }
        private void BindSubCategoryRepeater()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Select A.*,B.* from tblSubCategory A inner join tblCategory B on B.CatID = A.MainCatID ", conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrSubcat.DataSource = dt;
                        rptrSubcat.DataBind();

                    }
                }


            }
        }
        protected void btnAddSubCategory_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblSubCategory(SubCatName,MainCatID) values('" + txtSubCategory.Text +"','"+ddlMainCatID.SelectedItem.Value + "')", conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Added Successfully Done'); </script>");
                txtSubCategory.Text = string.Empty;
                conn.Close();
                ddlMainCatID.ClearSelection();
                ddlMainCatID.Items.FindByValue("0").Selected = true;
                

            }
            BindSubCategoryRepeater();
        }
        private void BindMainCat()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from tblCategory", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlMainCatID.DataSource = dt;
                    ddlMainCatID.DataTextField = "CatName";
                    ddlMainCatID.DataValueField = "CatID";
                    ddlMainCatID.DataBind();
                    ddlMainCatID.Items.Insert(0, new ListItem("-Select-", "0"));
                }




            }
        }
    }
   
}
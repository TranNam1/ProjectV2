using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace ProjectV2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBrand();
                BindCategory();
                BindCatDog();
                ddlSubCategory.Enabled = false;
            }
        }

        private void BindCatDog()
        {
            using (SqlConnection conn = new SqlConnection(CS))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from tblCatDog with(nolock)", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlCatDog.DataSource = dt;
                    ddlCatDog.DataTextField = "CatDogName";
                    ddlCatDog.DataValueField = "CatDogID";
                    ddlCatDog.DataBind();
                    ddlCatDog.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        private void BindCategory()
        {
            using (SqlConnection conn = new SqlConnection(CS))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from tblCategory", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatID";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }

        private void BindBrand()
        {
            using (SqlConnection conn = new SqlConnection(CS))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from tblBrands", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count!=0)
                {
                    ddlBrand.DataSource = dt;
                    ddlBrand.DataTextField = "Name";
                    ddlBrand.DataValueField = "BrandID";
                    ddlBrand.DataBind();
                    ddlBrand.Items.Insert(0, new ListItem("-Select-","0"));
                }
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("sp_InsertProduct", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductName",txtProductName.Text);
                cmd.Parameters.AddWithValue("@ProductPrice", txtPrice.Text);
                cmd.Parameters.AddWithValue("@ProductSellPrice", txtsellingPrice.Text);
                cmd.Parameters.AddWithValue("@ProductBrandID", ddlBrand.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ProductCategoryID", ddlCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ProductSubCatID", ddlSubCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ProductCatDogID", ddlCatDog.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ProductDescription", txtDescription.Text);
                cmd.Parameters.AddWithValue("@ProductDetals", txtProductDetail.Text);
                if (cbFreeDelivery.Checked==true)
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
                }
                if (cb30Ret.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@30dayRet", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@30dayRet", 0.ToString());
                }
                if (cbCOD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@COD", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@COD", 0.ToString());
                }
                conn.Open();
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());
            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSubCategory.Enabled = true;
            int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);
            using (SqlConnection conn = new SqlConnection(CS))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from tblSubCategory where MainCatID='" + ddlCategory.SelectedItem.Value + "'", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddlSubCategory.DataSource = dt;
                    ddlSubCategory.DataTextField = "SubCatName";
                    ddlSubCategory.DataValueField = "SubCatID";
                    ddlSubCategory.DataBind();
                    ddlSubCategory.Items.Insert(0, new ListItem("-Select-", "0"));
                }
            }
        }


    }
}
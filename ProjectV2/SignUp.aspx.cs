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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers(UserName,Password,Email,Name,Usertype) values('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "','" + txtFullName.Text + "','User')", conn);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registration Successfully Done'); </script>");
                    clr();
                    conn.Close();
                    lbMsg.Text = "Registration Successfully done";
                    lbMsg.ForeColor = System.Drawing.Color.GreenYellow;
                    
                }
                Response.Redirect("~/SignIn.aspx");
            }
            else
            {
                Response.Write("<script> alert('Registration Failed '); </script>");
                lbMsg.Text = "All Fileds are Empty!!";
                lbMsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool isformvalid()
        {
            if (txtUsername.Text == "") 
            {
                Response.Write("<script> alert('UserName not valid'); </script>");
                txtUsername.Focus();
                return false;
            }
            else if (txtPassword.Text == "")
            {
                Response.Write("<script> alert('Password not valid'); </script>");
                txtPassword.Focus();
                return false;
            }
            else if (txtPassword.Text != txtConfirmPassword.Text )
            {
                Response.Write("<script> alert('Password  not match'); </script>");
                txtConfirmPassword.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Email not valid'); </script>");
                txtEmail.Focus();
                return false;
            }
            else if (txtFullName.Text == "")
            {
                Response.Write("<script> alert('FullName not valid'); </script>");
                txtFullName.Focus();
                return false;
            }

            return true;
        }
        private void clr()
        {
            txtFullName.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtUsername.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtConfirmPassword.Text = string.Empty;
        }

        
        
    }

    
}
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
            SqlConnection conn = new SqlConnection("Data Source=SE140657;Initial Catalog=PetShop;Persist Security Info=True;User ID=sa;Password=123456");
            conn.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblUsers(UserName,Password,Email,Name) values('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "','" + txtFullName.Text + "')", conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Registration Successfully Done'); </script>");
            conn.Close();
        }
    }
}
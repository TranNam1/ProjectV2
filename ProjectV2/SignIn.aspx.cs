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
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["PASSWORD"] !=null)
                {
                    txtUserName.Text= Request.Cookies["UNAME"].Value;
                    txtPassword.Text = Request.Cookies["PASSWORD"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers Where Username=@username and Password=@pwd", conn);
                cmd.Parameters.AddWithValue("@username", txtUserName.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = txtUserName.Text;
                        Response.Cookies["PASSWORD"].Value = txtPassword.Text;

                        Response.Cookies["UNAME"].Expires=DateTime.Now.AddDays(10);
                        Response.Cookies["PASSWORD"].Expires= DateTime.Now.AddDays(10);

                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PASSWORD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    string Usertype;
                    Usertype = dt.Rows[0][5].ToString().Trim();
                    if (Usertype == "User")
                    {
                        Session["Username"] = txtUserName.Text;
                        Response.Redirect("~/UserHome.aspx");
                    }
                    if (Usertype == "Admin")
                    {
                        Session["Username"] = txtUserName.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }
                }
                else
                {
                    lblError.Text = "Invalid Username or Password";
                }
                //Response.Write("<script> alert('Login Successfully Done'); </script>");
                clr();
                conn.Close();
                //lbMsg.Text = "Registration Successfully done";
                //lbMsg.ForeColor = System.Drawing.Color.GreenYellow;

            }
            Response.Redirect("~/SignIn.aspx");
        }

        private void clr()
        {
            txtPassword.Text = string.Empty;
            txtUserName.Text = string.Empty;
            txtUserName.Focus();
        }
    }
}
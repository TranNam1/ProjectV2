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
    public partial class RecoverPassword : System.Web.UI.Page
    {
        String GUIDvalue;
        DataTable dt = new DataTable();
        int Uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
            {
                conn.Open();
                GUIDvalue = Request.QueryString["id"];
                

                if (GUIDvalue != null)
                {
                    SqlCommand cmd = new SqlCommand("select * from ForgotPass where Id = @Id", conn);
                    cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        Uid = Convert.ToInt32(dt.Rows[0][1]);
                    }
                    else
                    {
                        lblmsg.Text = "Your link is Expired or Invalid  Try Again!";
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                    }
                   
                }
                else
                {
                    Response.Redirect("~/Home.aspx");
                }
            }
            if (!IsPostBack)
            {
                if (dt.Rows.Count!=0)
                {
                    txtConfirmPass.Visible = true;
                    txtNewPass.Visible = true;
                    lblNewPassword.Visible = true;
                    lblDonfirmPass.Visible = true;
                    btnResetPass.Visible = true;
                }
                else
                {
                    lblmsg.Text = "Your link is Expired or Invalid  Try Again!";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }
            }
            
            
        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            if (txtNewPass.Text !="" && txtConfirmPass.Text!=""&& txtNewPass.Text == txtConfirmPass.Text)
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetShop"].ConnectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("Update tblUsers set Password=@p where Uid=@Uid", conn);
                    cmd.Parameters.AddWithValue("@p", txtNewPass.Text);
                    cmd.Parameters.AddWithValue("@Uid", Uid);
                    cmd.ExecuteNonQuery();
                    

                    SqlCommand cmd2 = new SqlCommand("delete from ForgotPass where Uid='" + Uid + "'", conn);
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script> alert('Password Reset Successfully'); </script>");
                    Response.Redirect("~/SignIn.aspx ");


                }
            }
        }
    }
}
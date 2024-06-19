using Ecommerce.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Web.Security;

namespace Ecommerce.User
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Submit_Click2(object sender, EventArgs e)
        {
            // DbHelper.CreateUser(txtName.Text, txtSurname.Text, txtMobile.Text, txtEmail.Text, txtAddress.Text, txtPostcode.Text, txtPassword.Text);
            // string script = "alert('Register successfully!');"; 
            // ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            // txtName.Text = string.Empty;
            //lblStatus.Text = DbHelper.GetStatus(int.Parse(txtTrack.Text));
             //const string Checkname = "1";
             //const string checkpass = "1234";

            
            if (DbHelper.UserAuthentication.Login(txtAcc.Text,txtPass.Text))
          
                {
                    
                    MessageBox.Show("Log In Successful. Welcome "+ DbHelper.GetName(txtAcc.Text) + " !", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Session.Abandon(); // Clear session
                   
                    Response.Redirect("../User/Cart.aspx"); // Redirect to login page
                   
            }
            else
                {
                    MessageBox.Show("Invalid Username or Password.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            

        }
    }
}
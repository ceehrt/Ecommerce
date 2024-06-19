using Ecommerce.Helpers;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Ecommerce.User
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void SaveUser(object sender, EventArgs e)
        {
            //DbHelper.CreateUser(txtName.Text);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string password = txtPassword.Text;
            string repassword = txtRepassword.Text;
            string account = DbHelper.GetAccount(txtEmail.Text);
            string message = $"Register Successful. Your account ID : {txtEmail.Text}";


            if (password.Length > 5)
            {
                if (password == repassword && !string.IsNullOrEmpty(txtEmail.Text))

                {
                    if (string.IsNullOrEmpty(account) && account != txtEmail.Text)
                    {
                            DbHelper.CreateUser(txtName.Text, txtSurname.Text, txtMobile.Text, txtEmail.Text, txtPassword.Text);
                            txtName.Text = string.Empty;
                            txtSurname.Text = string.Empty;
                            txtMobile.Text = string.Empty;
                            txtEmail.Text = string.Empty;
                            txtPassword.Text = string.Empty;
                            txtRepassword.Text = string.Empty;
                            //MessageBox.Show("Register Successful. Your account ID :", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            MessageBox.Show(message, "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    
                    
                    else if (account == txtEmail.Text)
                    {
                        MessageBox.Show("Your Account is duplicated, The Account ID must be unique. Please re-input again.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }

                else if (password != repassword)
                {
                    MessageBox.Show("Your Password and Re-enter Password do not match. Please re-input again.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Your Email must not be empty. Your email will be your account ID. Please re-input again.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else // password less than 6
            {
                MessageBox.Show("Your Password must be at least 6 characters. Please re-input again.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }    
    }

    

}
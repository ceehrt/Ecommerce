using Ecommerce.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.User
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = Request.QueryString["UserId"];

            //Get User Details By ID
            var user = DbHelper.GetUserById(userId);

            if(user != null)
            {
                txtName.Text = user.Name;
                txtMobile.Text = user.Mobile;
               
            }
        }


        // protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    DbHelper.CreateUser(txtName.Text, txtSurname.Text, txtMobile.Text, txtEmail.Text, txtAddress.Text, txtPostcode.Text, txtPassword.Text);

        //}
    }

   
}
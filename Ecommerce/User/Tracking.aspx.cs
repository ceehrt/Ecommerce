using Ecommerce.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecommerce.User
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Submit_Click1(object sender, EventArgs e)
        {
            // DbHelper.CreateUser(txtName.Text, txtSurname.Text, txtMobile.Text, txtEmail.Text, txtAddress.Text, txtPostcode.Text, txtPassword.Text);
            // string script = "alert('Register successfully!');";
            // ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            // txtName.Text = string.Empty;
            //lblStatus.Text = DbHelper.GetStatus(int.Parse(txtTrack.Text));
            lblStatus.Text = "Preparing Date : "+ DbHelper.TrackingP(txtTrack.Text);
            Shipping.Text = "Shipping Date : " + DbHelper.TrackingS(txtTrack.Text);
            Delivery.Text = "Delivery Date : " + DbHelper.TrackingD(txtTrack.Text);
        }
    }
}
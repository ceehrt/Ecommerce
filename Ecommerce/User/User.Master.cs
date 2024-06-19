using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Ecommerce.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Url.AbsoluteUri.ToString().Contains("Default.aspx"))
            {
                //load the control
                Control sliderUserControl = (Control)Page.LoadControl("SlideUserControl.ascx");
                pnlSliderUC.Controls.Add(sliderUserControl);

            }
        }
        protected void Submit_Clickm(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut(); // Clear authentication cookie
            
            System.Windows.Forms.MessageBox.Show("Logout Successful.","Logout");
            Response.Redirect("Default.aspx"); // Redirect to login page
            
        }
    }
    
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Profile;


public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        string username = CreateUserWizard1.UserName;
        string password = CreateUserWizard1.Password;
        Roles.AddUserToRole(username, "User");
        CreateUserWizardStep step1 = (CreateUserWizardStep)CreateUserWizard1.FindControl("Step1");
        TextBox k1 = (TextBox)step1.ContentTemplateContainer.FindControl("Phone");
        TextBox k2 = (TextBox)step1.ContentTemplateContainer.FindControl("Email");

        ProfileCommon profile = Profile.GetProfile(username);        
        
        profile.Phone = k1.Text;
        profile.Email = k2.Text;
        profile.Save();

        if (Membership.ValidateUser(username, password))
        {
            FormsAuthentication.SetAuthCookie(username, false);
            Response.Redirect("~/priv/MyProperty.aspx");
        }
    }


    
}
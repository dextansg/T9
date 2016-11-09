using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    //{
    //   //Session["userName"]= Login1.UserName;
    //    //Response.Redirect(@"~\priv\MyProperty.aspx");

    //}

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
       
        Session["change"] = "Main Page";
       
        
    }
}
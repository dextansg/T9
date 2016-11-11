using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class priv_MyProperty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();

        string username= User.Identity.Name;
        
        string change = Convert.ToString(Session["change"]);

        int propertyid = Convert.ToInt16(Request.QueryString["propertyid"]);


        var q = dc.PropertyDatas.FirstOrDefault();


        if (propertyid != 0)
        {
            q = dc.PropertyDatas.Where(x => x.PropertyID == propertyid).FirstOrDefault();
            dc.PropertyDatas.DeleteOnSubmit(q);
            dc.SubmitChanges();
            Response.Redirect("MyProperty.aspx");

        }


        List<PropertyData> pd = dc.PropertyDatas.ToList();
        
        add_btn.Visible = false;

        if (change== "MyProperty")
        {
            pd = dc.PropertyDatas.Where(y => y.UserName == username).ToList();

            change_btn.Text = "Main Page";
            add_btn.Visible = true;
        }
        else
        change_btn.Text = "MyProperty";
        StringBuilder html = new StringBuilder();



        for (int i = 0; i < pd.Count; i++)
        {
            html.Append("<div><table style='width:100%' ><tr><td style='width:30%'><img Height='222px' Width='256px' src='../" + pd[i].PropertyImage + "' /></td>");
            html.Append("<td style='width:50%'><table style='width :100%;height :100%;'><tr><td colspan='2'>" + pd[i].Heading + "</td></tr><tr><td>Address</td><td>" + pd[i].Address + "</td></tr>");
            html.Append("<tr><td>Size</td><td>" + pd[i].Size + "</td></tr>");
            html.Append("<tr><td>Price</td><td>" + pd[i].Prize + "</td></tr></table>");

            html.Append("</td> <td style='width:20%'><a href='../ViewDetail.aspx?propertyid=" + pd[i].PropertyID + "'>View Detail</a>");

            if (change == "MyProperty" || User.IsInRole("Admin"))
                html.Append("<br /><a href='MyProperty.aspx?propertyid=" + pd[i].PropertyID + "'>Delete</a>");
            html.Append("</td>");
            html.Append("</tr></table></div>");


        }
        PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });

    }

    

    protected void change_btn_Click(object sender, EventArgs e)
    {

        Session["change"] = change_btn.Text;

       
        
        Response.Redirect("MyProperty.aspx");
    }

    protected void add_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddProperty.aspx");
        
    }

    
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PropertyList : System.Web.UI.Page
{
    DataClassesDataContext dc = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        List<PropertyData> pd = dc.PropertyDatas.ToList();

        StringBuilder html = new StringBuilder();
        html.Append("<div><table style='width:100%' >");
        for (int i = 0; i < pd.Count; i++)
        {
            html.Append("<tr><td style='width:30%'><img Height='222px' Width='256px' src='" + pd[i].PropertyImage + "' /></td>");
            html.Append("<td style='width:50%'><table style='width :100%;height :100%;'><tr><td colspan='2'>" + pd[i].Heading + "</td></tr><tr><td>Address</td><td>" + pd[i].Address + "</td></tr>");
            html.Append("<tr><td>Size</td><td>" + pd[i].Size + "</td></tr>");
            html.Append("<tr><td>Price</td><td>" + pd[i].Prize + "</td></tr></table>");

            html.Append("</td> <td style='width:20%'><a href='ViewDetail.aspx?propertyid=" + pd[i].PropertyID + "'>View Detail</a>");

            html.Append("</td>");
            html.Append("</tr>");
            
        }
        html.Append("</table></div>");
        PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
 }
    
    protected void singnin_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void register_btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
}
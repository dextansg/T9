using System;
using System.Linq;

public partial class ViewDetail : System.Web.UI.Page
{
    DataClassesDataContext dc = new DataClassesDataContext();
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        int propertyid = Convert.ToInt16(Request.QueryString["propertyid"]);
        string username = User.Identity.Name;

        if (!IsPostBack)
        {
          

            PropertyData q = dc.PropertyDatas.Where(x => x.PropertyID == propertyid).FirstOrDefault();
            Image1.ImageUrl = q.PropertyImage.ToString();
            TextBoxPropertyid.Text = q.PropertyID.ToString();
                TextBoxUserName.Text = q.UserName.ToString();
            
                
                TextBoxHeading.Text = q.Heading.ToString();
                TextBoxAddress.Text = q.Address.ToString();
                TextBoxPostalCode.Text = q.PostalCode.ToString();
                TextBoxSize.Text = q.Size.ToString();
                TextBoxPrice.Text = q.Prize.ToString();
            TextBoxDescription.Text = q.Description.ToString();
            
            TextBoxBedroom.Text = q.Bedroom.ToString();
            TextBoxBathroom.Text = q.Bathroom.ToString();
            TextBoxEmail.Text = q.Email.ToString();
                TextBoxContact.Text =q.Phone.ToString();

            //for Anonymous User , they can't change anything and just browsing
            if ((username.Length<1 || username!=q.UserName) && !User.IsInRole("Admin"))

            {
                TextBoxHeading.Enabled=false;
                TextBoxAddress.Enabled = false;
                TextBoxPostalCode.Enabled = false;
                TextBoxSize.Enabled = false;
                TextBoxPrice.Enabled = false;
                TextBoxDescription.Enabled = false;
                TextBoxBedroom.Enabled = false;
                TextBoxBathroom.Enabled = false;
                ButtonModify.Visible = false;
                ButtonDelete.Visible = false;
                
            }


        }
    }

    protected void ButtonModify_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            int propertyid = Convert.ToInt16(Request.QueryString["propertyid"]);
            string username = User.Identity.Name;

            PropertyData q = dc.PropertyDatas.Where(x => x.PropertyID == propertyid).FirstOrDefault();

            
            q.Heading=TextBoxHeading.Text;
            q.Address=TextBoxAddress.Text;
            q.PostalCode=Convert.ToInt32(TextBoxPostalCode.Text);
            q.Size=Convert.ToDouble(TextBoxSize.Text);
            q.Prize=Convert.ToDouble(TextBoxPrice.Text);
            q.Description=TextBoxDescription.Text;

            q.Bedroom=Convert.ToInt32(TextBoxBedroom.Text);
            q.Bathroom=Convert.ToDouble(TextBoxBathroom.Text);
            dc.SubmitChanges();
            
            if (username.Length < 1)
            {
                Response.Redirect("PropertyList.aspx");
            }
            else
                Response.Redirect("~/priv/MyProperty.aspx");

        }
    }

    protected void ButtonDelete_Click(object sender, EventArgs e)
    {
        int propertyid = Convert.ToInt16(Request.QueryString["propertyid"]);
        string username = User.Identity.Name;

        PropertyData q = dc.PropertyDatas.Where(x => x.PropertyID == propertyid).FirstOrDefault();
        dc.PropertyDatas.DeleteOnSubmit(q);
        dc.SubmitChanges();
        if (username.Length < 1)
        {
            Response.Redirect("PropertyList.aspx");
        }
        else
            Response.Redirect("~/priv/MyProperty.aspx");
    }

    protected void ButtonCancel_Click(object sender, EventArgs e)
    {
        string username = User.Identity.Name;
        if (username.Length < 1)
        {
            Response.Redirect("PropertyList.aspx");
        }
        else
            Response.Redirect("~/priv/MyProperty.aspx");
    }
}
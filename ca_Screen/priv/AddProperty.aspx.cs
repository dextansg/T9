using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class priv_AddProperty : System.Web.UI.Page
{
    DataClassesDataContext dc = new DataClassesDataContext();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            ClearControl();
        UserIDTB.Text = User.Identity.Name;
    }

    

    protected void PostButton_Click(object sender, EventArgs e)
    {
        PropertyData newPD = new PropertyData();
        string username = User.Identity.Name;
        dc.PropertyDatas.InsertOnSubmit(newPD);
        
        newPD.UserName = username;
        newPD.Heading = HeadingTB.Text;
        newPD.Address = AddressTB.Text;
        newPD.PostalCode = Convert.ToInt32(PostalCodeTB.Text);
        newPD.Size = Convert.ToDouble(SizeTB.Text);
        newPD.Prize = Convert.ToDouble(PriceTB.Text);
        newPD.Bedroom = Convert.ToInt32(BedroomTB.Text);
        newPD.Bathroom = Convert.ToDouble(BathroomTB.Text);
        newPD.Description = DescriptionTB.Text;

        string imageurl = Convert.ToString(Session["image"]);
        newPD.PropertyImage = "Images/"+username+imageurl;

        newPD.Email = Convert.ToString(Profile.Email);
        string phone = Profile.Phone;
        newPD.Phone = 12345678;

        dc.SubmitChanges();
        
            Response.Redirect("MyProperty.aspx");
    }
    void ClearControl()
    {
        
        HeadingTB.Text = "";
        AddressTB.Text = "";
        PostalCodeTB.Text = "";
        SizeTB.Text = "";
        PriceTB.Text = "";
        BedroomTB.Text = "";
        BathroomTB.Text = "";
        DescriptionTB.Text = "";
    }
    private void ImageUpload()
    {
        if (FileUpload1.HasFile)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            Session["image"] = fileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + User.Identity.Name+fileName);
        }
    }

    protected void UploadButton_Click(object sender, EventArgs e)
    {
        ImageUpload();
        Stream fs = FileUpload1.PostedFile.InputStream;
        BinaryReader br = new BinaryReader(fs);
        byte[] bytes = br.ReadBytes((Int32)fs.Length);
        string base64string = Convert.ToBase64String(bytes, 0, bytes.Length);
        Image1.ImageUrl = "data:images/png;base64," + base64string;
    }

    protected void CancelButton_Click1(object sender, EventArgs e)
    {
        Response.Redirect("MyProperty.aspx");
    }
}
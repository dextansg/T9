<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProperty.aspx.cs" Inherits="priv_AddProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
	<title>Add New Property</title>
	<link rel="stylesheet" href="../css/style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
        <div class="section">
            <div style="float:right">
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                <br />
    <div style="float:right;">Login as <asp:LoginName ID="LoginName1" runat="server" ForeColor="#000099" /></div>
            </div>
            <div style="float:left">
             <a href="MyProperty.aspx"> <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Logo.png" Width="100%" /></a>
                </div>


        </div>
		
	</div>
	<div id="body">
		
		<div style="padding-left:100px;">
    
        <table style="padding :10px; border-spacing:5px;">

        <tr>
            <td style="width:20%;" >UserName&nbsp;:</td>
            <td>&nbsp;<asp:TextBox ID="UserIDTB" runat="server" ReadOnly="True" Width="181px" Enabled="False"></asp:TextBox></td>
        </tr>

        <tr>
            <td  >Heading&nbsp;:</td>
            <td>&nbsp;<asp:TextBox ID="HeadingTB" runat="server" Width="181px"></asp:TextBox>
                 &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Heading cannot be empty!" ForeColor="Red" ControlToValidate="HeadingTB"></asp:RequiredFieldValidator>
            </td>            
        </tr>
                    
        <tr>
            <td  >Address&nbsp;:</td>
            <td>&nbsp;<asp:TextBox ID="AddressTB" runat="server" Width="181px"></asp:TextBox>&nbsp; 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address cannot be empty!" ForeColor="Red" ControlToValidate="AddressTB"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td  >PostalCode&nbsp;:</td>
            <td>&nbsp;<asp:TextBox ID="PostalCodeTB" runat="server" Width="181px"></asp:TextBox>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="PostalCode cannot be empty!" ForeColor="Red" ControlToValidate="PostalCodeTB"></asp:RequiredFieldValidator>
                <br />
                     &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PostalCodeTB" ErrorMessage="Please input 6 digital number!" ForeColor="Orange" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
           </td>
        </tr>
        
        <tr>
            <td  >Size&nbsp;:</td>
            <td>&nbsp;<asp:TextBox ID="SizeTB" runat="server" Width="181px"></asp:TextBox>&nbsp;
                <b style="color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 249);">m<sup style="line-height: 1; font-size: 11.2px;">2</sup> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Size cannot be empty!" ForeColor="Red" ControlToValidate="SizeTB"></asp:RequiredFieldValidator>&nbsp;&nbsp;
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="SizeTB" ErrorMessage="Only accept 0~1000 numbers!" ForeColor="Orange" MaximumValue="1000" MinimumValue="0" Type="Double"></asp:RangeValidator></b>
            </td>
        </tr>  
            
        <tr>
            <td  >&nbsp;Price:</td>
            <td>&nbsp;<asp:TextBox ID="PriceTB" runat="server" Width="181px"></asp:TextBox>&nbsp;
                S$&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Price cannot be empty!" ForeColor="Red" ControlToValidate="PriceTB"></asp:RequiredFieldValidator>
                <b style="color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 249);">&nbsp;&nbsp;
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="PriceTB" ErrorMessage="Only accept numbers!" ForeColor="Orange" MinimumValue="0" Type="Double" MaximumValue="99999999"></asp:RangeValidator>
                </b>
            </td>
        </tr>                  
 
        <tr>
            <td  >Bedroom&nbsp;:</td>
            <td>&nbsp;<asp:TextBox ID="BedroomTB" runat="server" Width="181px"></asp:TextBox>
                <b style="color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 249);">
                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="BedroomTB" ErrorMessage="Only accept numbers!" ForeColor="Orange" MaximumValue="1000" MinimumValue="0" Type="Double"></asp:RangeValidator>
                </b>
            </td>
        </tr>

        <tr>
            <td  >Bathroom&nbsp;:</td>
            <td>&nbsp;<asp:TextBox ID="BathroomTB" runat="server" Width="181px"></asp:TextBox>
                <b style="color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 249);">
                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="BathroomTB" ErrorMessage="Only accept numbers!" ForeColor="Orange" MaximumValue="1000" MinimumValue="0" Type="Double"></asp:RangeValidator>
                </b></td>
        </tr>               
    </table>
                <br />
                
                &nbsp;
                Description:<br />
                :<asp:TextBox ID="DescriptionTB" runat="server" Width="421px" Height="98px" TextMode="MultiLine"></asp:TextBox>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
                <br />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="UploadButton" runat="server"  Text="Upload" Height="24px" Width="70px" OnClick="UploadButton_Click" />
&nbsp;&nbsp;<br />
                <br />
                &nbsp; FileName: <asp:TextBox ID="FileNameTB" runat="server"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
                
                &nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Image ID="Image1" runat="server" Height="216px" Width="405px" />
                
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="PostButton" runat="server" Text="Post" Width="55px" OnClick="PostButton_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="CancelButton" runat="server" Text="Cancel" Width="55px" OnClick="CancelButton_Click1" CausesValidation="False" />
    
    </div>
	</div>
	<div id="footer">
		<div>
			<div class="connect">
				
			</div>
			<p>
				
			</p>
		</div>
	</div>

    
    </form>
</body>
</html>


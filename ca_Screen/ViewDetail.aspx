<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDetail.aspx.cs" Inherits="ViewDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
	<title>Website For Selling/Buying Property</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
<style type="text/css">
        #wrap{
            width: 1050px;
        }
        .first{
            float: left; width: 234px; height: 200px; padding: 10px; margin-left: 20px; margin-right: 10px;
        }
        .third{
            float: left; width: 490px; margin-left: 10px;
        height: 445px;
    }
        .second{
            float: left; width: 200px; margin-left: 10px; margin-right: 10px;
        }
    </style>

    
</head>
<body>
    <form id="form2" runat="server">

        <div id="header">
        <div class="section">
            <div style="float:left">
              <a href="PropertyList.aspx"><asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Logo.png" Width="100%" /></a>
                </div>


        </div>
		
	</div>
	<div id="body">
		
		<div id="wrap">
        <div class="first">
            <asp:Image ID="Image1" runat="server" Width="235px" Height="200px" />
            </div>
        <div class="second">
            <asp:Label ID="LabelPropertyID" runat="server" Text="PropertyID"></asp:Label>
            <br />
            <br />
        <asp:Label ID="LabelUserName" runat="server" Text="Name" Height="22px"></asp:Label>
            <br />
            <br />
        <asp:Label ID="LabelHeading" runat="server" Text="Heading" Height="25px"></asp:Label>
            <br />
        <br />
        <asp:Label ID="LabelAddress" runat="server" Text="Address" Height="25px"></asp:Label>
            <br />
            <br />
        
        <asp:Label ID="LabelPostalCode" runat="server" Text="PostalCode" Height="25px"></asp:Label>
            <br />
        <br />
        <asp:Label ID="LabelSize" runat="server" Text="Size" Height="28px"></asp:Label>
            <br />
        <br />
        <asp:Label ID="LabelPrice" runat="server" Text="Price" Height="20px"></asp:Label>
            <br />
        <br />
        <asp:Label ID="LabelDescription" runat="server" Text="Description" Height="20px"></asp:Label>
            <br />
            <br />
        <asp:Label ID="LabelBedroom" runat="server" Text="Bedroom" Height="20px"></asp:Label>
            <br />
        <br />
        <asp:Label ID="LabelBathroom" runat="server" Text="Bathroom" Height="25px"></asp:Label>
            <br />
        
        <br />
        <asp:Label ID="LabelEmail" runat="server" Text="Email" Height="22px"></asp:Label>
            <br />
        <br />
        <asp:Label ID="LabelContact" runat="server" Text="Contact"></asp:Label>
            <br />
        <br />
        <br />
        
        </div>
            <div class="third">
        <asp:TextBox ID="TextBoxPropertyid" runat="server" Width="484px" Height="16px" Enabled="False"></asp:TextBox>
                <br />
                <br />
        <asp:TextBox ID="TextBoxUserName" runat="server" Width="484px" Height="16px" Enabled="False"></asp:TextBox>
                <br />
                <br />
        <asp:TextBox ID="TextBoxHeading" runat="server" Width="484px" Height="16px"></asp:TextBox>
                <br />
                <br />
        <asp:TextBox ID="TextBoxAddress" runat="server" Width="484px" Height="16px"></asp:TextBox>
                <br />
                <br />
        <asp:TextBox ID="TextBoxPostalCode" runat="server" Width="484px" Height="16px"></asp:TextBox>
                <br />
                <br />
        <asp:TextBox ID="TextBoxSize" runat="server" Width="484px" Height="16px"></asp:TextBox>
                <br />
                <br />
        <asp:TextBox ID="TextBoxPrice" runat="server" Width="484px" Height="16px"></asp:TextBox>
                <br />
                <br />
        <asp:TextBox ID="TextBoxDescription" runat="server" Width="484px" Height="16px"></asp:TextBox>
                <br />
                <br />
        <asp:TextBox ID="TextBoxBedroom" runat="server" Width="484px" Height="16px"></asp:TextBox>
                <br />
                <br />
        <asp:TextBox ID="TextBoxBathroom" runat="server" Width="484px" Height="16px"></asp:TextBox>
                <br />
                
                <br />
        <asp:TextBox ID="TextBoxEmail" runat="server" Width="484px" Height="16px" Enabled="False"></asp:TextBox>
                <br />
                <br />
        <asp:TextBox ID="TextBoxContact" runat="server" Width="484px" Height="16px" Enabled="False"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="ButtonModify" runat="server" OnClick="ButtonModify_Click" Text="Modify" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonDelete" runat="server" OnClick="ButtonDelete_Click" Text="Delete" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" OnClick="ButtonCancel_Click" />
        <br />
            </div>
        </div>
	</div>      
    </form>
    <div id="footer">
		<div>
			<div class="connect">
				
			</div>
			<p>
				
			</p>
		</div>
	</div>
</body>
</html>

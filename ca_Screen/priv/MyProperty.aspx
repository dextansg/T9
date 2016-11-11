<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyProperty.aspx.cs" Inherits="priv_MyProperty" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
	<title>Show Property</title>
	<link rel="stylesheet" href="../css/style.css" type="text/css" />
    <style type="text/css">
        #img1 {
            width: 227px;
            height: 187px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

<div id="header">
		<div class="section">
            <div style="float:right">
        <asp:Button ID="add_btn" runat="server" Text="Add" Width="65px" OnClick="add_btn_Click"  />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="change_btn" runat="server" Text="MyProperty" Width="78px" OnClick="change_btn_Click" />
        
    &nbsp;&nbsp;&nbsp;
        
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
                <br />
    <div style="float:right;">Login as <asp:LoginName ID="LoginName1" runat="server" ForeColor="#000099" /></div>
    </div>
                
			<div style="float:left">
             <a href="MyProperty.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo.png" Width="100%" /></a>
                </div>
		</div>
	</div>
    <div id="body">
		
		<div>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
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

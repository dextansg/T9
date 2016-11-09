<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PropertyList.aspx.cs" Inherits="PropertyList" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
	<title>Website For Selling/Buying Property</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
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
            <div style="float:left">
          <a href="PropertyList.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo.png" Width="100%" /></a>
                </div>
            <div style="float:right">

                    <asp:Button ID="singnin_btn" runat="server" Text="Signin" Width="73px" OnClick="singnin_btn_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="register_btn" runat="server" Text="Register" Width="73px" OnClick="register_btn_Click" />
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
   
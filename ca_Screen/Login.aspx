<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
	<title>Login</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
      <div id="header">
		<div class="section">
            
			<div style="float:left">
               <a href="PropertyList.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo.png" Width="100%" /></a>
                </div>
			
                
		</div>
        
		
	</div>
    <div id="body">
		
		<div style="margin-left:300px;">
			<asp:Login ID="Login1" runat="server" DestinationPageUrl="~/priv/MyProperty.aspx"></asp:Login>
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

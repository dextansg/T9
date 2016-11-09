<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 217px;
            height: 132px;
            position: absolute;
            top: 34px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Login ID="Login1" runat="server" CssClass="auto-style1" style="z-index: 1" DestinationPageUrl="~/Prv/LogedPage.aspx">
        </asp:Login>
    </form>
</body>
</html>

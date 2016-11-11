<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 262px;
            height: 293px;
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
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CssClass="auto-style1" style="z-index: 1" FinishDestinationPageUrl="~/Prv/LogedPage.aspx">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </form>
</body>
</html>

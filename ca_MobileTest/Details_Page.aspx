<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FirstPage.aspx.cs" Inherits="_Default" %>


<!DOCTYPE HTML>
<html>
<head runat="server">
 <title>FirstPage</title>
 <meta name="viewport" content="width=device-width, initial-scale=1" />
 <link rel="stylesheet" href=
   "http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
 <script src="http://code.jquery.com/jquery-1.11.1.min.js"> </script>
 <script src=
   "http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js">
 </script>
</head>

<body>
    <form id="form1" runat="server">
        <div data-role="page" id="p1">
            <div data-role="header">
                <h1>MasionExpert</h1>
            </div>

            <div data-role="navbar">
	            <ul>
		            <li><a href="Login.aspx" class="ui-btn-active ui-state-persist">Login</a></li>
		            <li><a href="Signup.aspx">Signup</a></li>
	            </ul>
            </div><!-- /navbar -->

            <div data-role="content">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="PropertyID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                    <Fields>
                        <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" ReadOnly="True" SortExpression="PropertyID" />
                        <asp:BoundField DataField="Heading" HeaderText="Heading" SortExpression="Heading" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                        <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Bedroom" HeaderText="Bedroom" SortExpression="Bedroom" />
                        <asp:BoundField DataField="Bathroom" HeaderText="Bathroom" SortExpression="Bathroom" />
                        <asp:ImageField DataImageUrlField="PropertyImage" HeaderText="ImagePreview" ControlStyle-Width="400" ControlStyle-Height="230">
                        </asp:ImageField>
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MaisonExpertDataConnectionString %>" SelectCommand="SELECT * FROM [PropertyData] WHERE ([PropertyID] = @PropertyID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="PropertyID" QueryStringField="PropertyID" Type="Int16" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>

            <div data-role="footer" data-position="fixed">
                <h2>&copy;SA43Team9 ISS NUS </div>
        </div>
    </form>
</body>
</html>

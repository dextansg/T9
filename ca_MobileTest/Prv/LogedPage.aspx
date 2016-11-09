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
		            <li><a href="MyProperty.aspx" class="ui-btn-active ui-state-persist">My Property</a></li>
		            <li><a href="FirtPage.aspx">Logout</a></li>
	            </ul>
            </div><!-- /navbar -->

            <div data-role="content">
                 <div class="gridView_all" style="display: block">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="80%" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle HorizontalAlign="Center" />
                        <Columns>
                            <asp:ImageField DataImageUrlField="PropertyImage" HeaderText="Image" ReadOnly="True" ControlStyle-Width="150" ControlStyle-Height="100">
<ControlStyle Height="70px" Width="100px"></ControlStyle>
                            </asp:ImageField>
                            <asp:BoundField DataField="Heading" HeaderText="Heading" SortExpression="Heading" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MaisonExpertDataConnectionString %>" SelectCommand="SELECT [Heading], [Address], [Size], [Price], [PropertyImage] FROM [PropertyData]"></asp:SqlDataSource>
                </div>

            </div>

            <div data-role="footer" data-position="fixed">
                <h2>&copy;SA43Team9 ISS NUS</h2>
            </div>
        </div>
    </form>
</body>
</html>

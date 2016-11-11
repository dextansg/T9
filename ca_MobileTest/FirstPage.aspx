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
                
                <div class="gridView_all" style="display: block">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="80%" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundField DataField="PropertyID" HeaderText="PropertyID" ReadOnly ="True" SortExpression="PropertyID" FooterStyle-HorizontalAlign="Left" />
                            <asp:ImageField DataImageUrlField="PropertyImage" HeaderText="Image" ReadOnly="True" ControlStyle-Width="150" ControlStyle-Height="100">
<ControlStyle Height="70px" Width="100px"></ControlStyle>
                            </asp:ImageField>
                            <asp:BoundField DataField="Heading" HeaderText="Heading" SortExpression="Heading" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate><a href="Details_Page.aspx?PropertyID=<%# Eval("PropertyID") %>">Select</a></ItemTemplate>

                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MaisonExpertDataConnectionString %>" SelectCommand="SELECT [Heading], [Address], [Size], [Price], [PropertyImage], [PropertyID] FROM [PropertyData]"></asp:SqlDataSource>
                </div>

            </div>
            <div data-role="footer" data-position="fixed"><h2>&copy;SA43Team9 ISS NUS</h2></div>
        </div>

        
     <%--   <div data-role="page" id="p2">
            <div data-role="header"><h1>This is my header2</h1></div>
            <div data-role="content">
                <p>This is page2.
                <p>
                    Another line
                </p>
                <a href="#p1" data-role="button">Go back</a>
            </div>
            <div data-role="footer" data-position="fixed"><h2>This is my footer2</h2></div>
        </div>
        <div data-role="page" id="p3">
            <div data-role="header">
                <a href="options.aspx">Options</a>
                <h1>This is my header2</h1>
                <a href="page2.aspx">Next</a>
            </div>
            <div data-role="content">
                <p>This is page3.
                <p>
                    Another line
                </p>
                <a href="#p1" data-role="button">Go back</a>
            </div>
            <div data-role="footer" data-position="fixed">
                <a href="#p1">p1</a>
                <a href="#p2">p2</a>
                <a href="#p3">p3</a>
            </div>
        </div>--%>
    </form>
</body>
</html>

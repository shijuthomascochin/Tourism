<%@ Page Language="C#" AutoEventWireup="true" CodeFile="locationsadmin.aspx.cs" Inherits="WebSite_locations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
<!--
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 13px;
}
-->
    </style>
</head>
<body bgcolor="#99cc99" style="color: #000000; text-align: center;">
<form runat=server>
    <div style="z-index: 104; left: 5px; width: 145px; position: absolute; top: 108px;
        height: 397px; background-color: darkseagreen; text-align: left;">
        <span style="color: darkolivegreen">&nbsp;<br />
            &nbsp;</span><a href="adminpage.aspx"><span style="font-family: Verdana; font-size: 11pt; color: darkolivegreen;">Home</span></a><br />
        <br />
        <span style="font-size: 11pt; color: darkolivegreen;">&nbsp;</span><a href="hotels.aspx"><span style="font-family: Verdana; font-size: 11pt; color: darkolivegreen;">Hotels</span></a><br />
        <br />
        <span style="font-size: 11pt; color: darkolivegreen;">&nbsp;</span><a href="htladmin.aspx"><span style="font-family: Verdana; font-size: 11pt; color: darkolivegreen;">Hotel Admins</span></a><br />
        <br />
        <span style="font-size: 11pt; color: darkolivegreen; font-family: Verdana">&nbsp;<a href="packageadmin.aspx"><span style="color: darkolivegreen">Packages</span> </a></span><br />
        <br />
        <span style="font-size: 11pt; color: darkolivegreen;">&nbsp;</span><a href="users.aspx"><span style="font-family: Verdana; font-size: 11pt; color: darkolivegreen;">Users</span></a><br />
        <br />
        <span style="font-family: Verdana; color: darkolivegreen;">&nbsp;<a href="locationsadmin.aspx"><span style="font-family: Verdana; font-size: 11pt; color: darkolivegreen;">Locations<br /></span>
            <br /></a><span style="font-family: Verdana; font-size: 11pt; color: darkolivegreen;">
            &nbsp;<a href="adadmin.aspx"><span style="color: darkolivegreen">Advertisements</span></a><br />
            </span></SPAN><br />
        <span style="font-size: 11pt; color: darkolivegreen;">&nbsp;</span><a href="chgpasswd.aspx"><span style="font-family: Verdana; font-size: 11pt; color: darkolivegreen;">Change Password</span></a><br />
        <br />
        &nbsp;<a href="sitesettings.aspx"><span style="font-family: Verdana; font-size: 11pt; color: darkolivegreen;">Site Settings</span></a>&nbsp;<br />
        <br />
        <span style="font-size: 11pt; color: darkolivegreen;">&nbsp;</span><a href="logout.aspx"><span style="font-family: Verdana; font-size: 11pt; color: darkolivegreen;">Logout</span></a><br />
    </div>
    <span style="font-size: 32pt; color: green; font-family: Verdana">        </span>
    <div class="style1" style="z-index: 105; left: 154px; width: 91px; position: absolute; top: 317px; height: 142px; background-color: #8FBC8F; layer-background-color: #8FBC8F; border: 1px none #000000;" align="center">
        <span style="font-size: 10pt">
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="DarkOliveGreen" Style="z-index: 100;
                left: 8px; position: absolute; top: 8px" Width="78px" OnClick="LinkButton1_Click">View</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="DarkOliveGreen" Style="z-index: 101;
                left: 8px; position: absolute; top: 35px" Width="78px" OnClick="LinkButton2_Click">Add</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="DarkOliveGreen" Style="z-index: 102;
                left: 8px; position: absolute; top: 62px" Width="78px" OnClick="LinkButton3_Click">Edit</asp:LinkButton>
            <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="DarkOliveGreen" Style="z-index: 103;
                left: 8px; position: absolute; top: 89px" Width="78px" OnClick="LinkButton4_Click">Delete</asp:LinkButton>
            <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="DarkOliveGreen" Style="z-index: 105;
                left: 8px; position: absolute; top: 118px" Width="78px" OnClick="LinkButton5_Click">Cancel</asp:LinkButton>
        </span>
</div>
    <span style="font-size: 32pt; color: green; font-family: Verdana"><strong>Tourism</strong></span>&nbsp;<br />
    <br />
    <span style="font-size: 16pt; color: green; font-family: Verdana"><strong>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="location_name" DataSourceID="SDS1"
            Font-Bold="False" Font-Names="Verdana" Font-Size="9pt" Style="z-index: 100; left: 264px;
            position: absolute; top: 149px; text-decoration: none" Width="505px">
            <Columns>
                <asp:BoundField DataField="location_name" HeaderText="Location" ReadOnly="True" SortExpression="location_name" />
                <asp:BoundField DataField="location_description" HeaderText="Description" SortExpression="location_description" />
                <asp:BoundField DataField="location_route" HeaderText="Route" SortExpression="location_route" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="location_name" DataSourceID="SDS1"
            Font-Bold="False" Font-Names="Verdana" Font-Size="9pt" Style="z-index: 101; left: 264px;
            position: absolute; top: 147px; text-decoration: none" Width="505px" OnRowUpdating="GridView2_RowUpdating">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:BoundField DataField="location_name" HeaderText="Location" SortExpression="location_name" />
                <asp:BoundField DataField="location_description" HeaderText="Description" SortExpression="location_description" />
                <asp:BoundField DataField="location_route" HeaderText="Route" SortExpression="location_route" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="location_name" DataSourceID="SDS1"
            Font-Bold="False" Font-Names="Verdana" Font-Size="9pt" Style="z-index: 106; left: 256px;
            position: absolute; top: 147px; text-decoration: none" Width="505px" OnRowDeleting="GridView3_RowDeleting">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                <asp:BoundField DataField="location_name" HeaderText="Location" SortExpression="location_name" />
                <asp:BoundField DataField="location_description" HeaderText="Description" SortExpression="location_description" />
                <asp:BoundField DataField="location_route" HeaderText="Route" SortExpression="location_route" />
            </Columns>
        </asp:GridView>
        Locations
        Admin</strong></span>&nbsp;
    <asp:SqlDataSource ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
        SelectCommand="SELECT * FROM [Location_Details]"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderColor="Green" BorderStyle="Solid"
        BorderWidth="1px" Font-Bold="True" ForeColor="Green" OnClick="Button1_Click"
        Style="z-index: 103; left: 390px; position: absolute; top: 482px" Text="Back"
        Width="114px" />
        </form>
</body>

</html>


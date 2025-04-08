<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="WebSite_users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#99cc99" style="color: #000000; text-align: center;">
<form runat=server>
    <div style="z-index: 102; left: 5px; width: 145px; position: absolute; top: 108px;
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
    <strong><span style="font-size: 32pt; color: green; font-family: Verdana">Tourism</span></strong>
    <br />
    <br />
    <span style="font-size: 16pt; color: green; font-family: Verdana"><strong>Users</strong></span>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" DataSourceID="SDS1" Font-Bold="False" Style="font-size: 8pt;
        z-index: 100; left: 185px; color: darkgreen; font-family: Verdana; position: absolute;
        top: 139px; text-decoration: none" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            <asp:BoundField DataField="usr_id" HeaderText="usr_id" SortExpression="usr_id" />
            <asp:BoundField DataField="usr_passwd" HeaderText="usr_passwd" SortExpression="usr_passwd" />
            <asp:BoundField DataField="usr_name" HeaderText="usr_name" SortExpression="usr_name" />
            <asp:BoundField DataField="usr_phone" HeaderText="usr_phone" SortExpression="usr_phone" />
            <asp:BoundField DataField="usr_mobile" HeaderText="usr_mobile" SortExpression="usr_mobile" />
            <asp:BoundField DataField="usr_email" HeaderText="usr_email" SortExpression="usr_email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
        SelectCommand="SELECT * FROM [User_Tab]"></asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderColor="Green" BorderStyle="Solid"
        BorderWidth="1px" Font-Bold="True" ForeColor="Green" OnClick="Button1_Click"
        Style="z-index: 103; left: 385px; position: absolute; top: 523px" Text="Back"
        Width="114px" />
        </form>
</body>

</html>


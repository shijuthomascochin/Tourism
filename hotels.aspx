<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hotels.aspx.cs" Inherits="WebSite_hotels" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#99cc99" style="color: #000000; text-align: center;">
<form runat=server>
    <div style="z-index: 100; left: 5px; width: 145px; position: absolute; top: 108px;
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
    <span style="font-size: 16pt; color: green; font-family: Verdana"><strong>Hote
        <div style="z-index: 101; left: 168px; width: 529px; position: absolute; top: 133px;
        height: 348px">
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="htl_id" DataSourceID="SDS1" Font-Bold="False"
            Style="font-size: 8pt; z-index: 100; left: 0px; color: darkgreen; font-family: Verdana;
            position: absolute; top: 0px; text-decoration: none" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:BoundField DataField="htl_id" HeaderText="htl_id" SortExpression="htl_id" />
                <asp:BoundField DataField="adm_id" HeaderText="adm_id" SortExpression="adm_id" />
                <asp:BoundField DataField="htl_name" HeaderText="htl_name" SortExpression="htl_name" />
                <asp:BoundField DataField="htl_location" HeaderText="htl_location" SortExpression="htl_location" />
                <asp:BoundField DataField="htl_district" HeaderText="htl_district" SortExpression="htl_district" />
                <asp:BoundField DataField="htl_star" HeaderText="htl_star" SortExpression="htl_star" />
                <asp:BoundField DataField="htl_phone" HeaderText="htl_phone" SortExpression="htl_phone" />
                <asp:BoundField DataField="htl_mobile" HeaderText="htl_mobile" SortExpression="htl_mobile" />
                <asp:BoundField DataField="htl_fax" HeaderText="htl_fax" SortExpression="htl_fax" />
                <asp:BoundField DataField="htl_website" HeaderText="htl_website" SortExpression="htl_website" />
                <asp:BoundField DataField="htl_email" HeaderText="htl_email" SortExpression="htl_email" />
                <asp:BoundField DataField="htl_description" HeaderText="htl_description" SortExpression="htl_description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
            SelectCommand="SELECT * FROM [Hotel_Details]"></asp:SqlDataSource>
        &nbsp;
    </div>
        ls Admin</strong></span>
    <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderColor="Green" BorderStyle="Solid"
        BorderWidth="1px" Font-Bold="True" ForeColor="Green" OnClick="Button1_Click"
        Style="z-index: 102; left: 348px; position: absolute; top: 493px" Text="Back"
        Width="114px" />
        </form>
</body>


</html>



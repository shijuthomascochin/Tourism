<%@ Page Language="C#" AutoEventWireup="true" CodeFile="packageadmin.aspx.cs" Inherits="WebSite_packageadmin" %>

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
    <strong><span style="font-size: 32pt; color: green; font-family: Verdana">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataSourceID="SDS1" Font-Bold="False" Style="font-size: 8pt;
            z-index: 100; left: 156px; color: darkgreen; font-family: Verdana; position: absolute;
            top: 146px; text-decoration: none" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting1">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                    <ItemStyle BorderStyle="Solid" BorderWidth="1px" />
                </asp:CommandField>
                <asp:BoundField DataField="pak_id" HeaderText="pak_id" SortExpression="pak_id" ReadOnly="True" ShowHeader="False" />
                <asp:BoundField DataField="adm_id" HeaderText="adm_id" SortExpression="adm_id" />
                <asp:BoundField DataField="htl_id" HeaderText="htl_id" SortExpression="htl_id" />
                <asp:BoundField DataField="pak_days" HeaderText="pak_days" SortExpression="pak_days" />
                <asp:BoundField DataField="pak_nights" HeaderText="pak_nights" SortExpression="pak_nights" />
                <asp:BoundField DataField="pak_no_ppl" HeaderText="pak_no_ppl" SortExpression="pak_no_ppl" />
                <asp:BoundField DataField="pak_rate" HeaderText="pak_rate" SortExpression="pak_rate" />
                <asp:BoundField DataField="pak_description" HeaderText="pak_description" SortExpression="pak_description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
            SelectCommand="SELECT * FROM [Hotel_Package]"></asp:SqlDataSource>
        Tourism</span></strong>&nbsp;<br />
    <br />
    <span style="font-size: 16pt; color: green; font-family: Verdana"><strong>Package Admin</strong></span>
    </form>
</body>

</html>

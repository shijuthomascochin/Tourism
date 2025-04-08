<%@ Page Language="C#" AutoEventWireup="true" CodeFile="htladmin.aspx.cs" Inherits="WebSite_htladmin" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Hotel Admin</title>
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
    <strong><span style="font-size: 32pt; color: green; font-family: Verdana">
        <div style="z-index: 101; left: 170px; width: 560px; position: absolute; top: 116px;
            height: 208px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SDS1" Font-Bold="False" Style="font-size: 8pt;
                z-index: 100; left: 0px; color: darkgreen; font-family: Verdana; position: absolute;
                top: 3px; text-decoration: none" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:BoundField DataField="adm_id" HeaderText="adm_id" SortExpression="adm_id" />
                    <asp:BoundField DataField="adm_name" HeaderText="adm_name" SortExpression="adm_name" />
                    <asp:BoundField DataField="adm_passwd" HeaderText="adm_passwd" SortExpression="adm_passwd" />
                    <asp:BoundField DataField="adm_address" HeaderText="adm_address" SortExpression="adm_address" />
                    <asp:BoundField DataField="adm_pincode" HeaderText="adm_pincode" SortExpression="adm_pincode" />
                    <asp:BoundField DataField="adm_phone" HeaderText="adm_phone" SortExpression="adm_phone" />
                    <asp:BoundField DataField="adm_mobile" HeaderText="adm_mobile" SortExpression="adm_mobile" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
                SelectCommand="SELECT * FROM [Admin_Hotel]"></asp:SqlDataSource>
        </div>
        Tourism</span></strong>
    <br />
    <br />
    <span style="font-size: 16pt; color: green; font-family: Verdana"><strong>Hotel Admin</strong></span>
    <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderColor="Green" BorderStyle="Solid"
        BorderWidth="1px" Font-Bold="True" ForeColor="Green" OnClick="Button1_Click"
        Style="z-index: 102; left: 388px; position: absolute; top: 490px" Text="Back"
        Width="114px" />
    </form>

</body>

</html>

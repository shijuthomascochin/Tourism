<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sitesettings.aspx.cs" Inherits="WebSite_sitesettings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Avertisement Admin</title>
</head>
<body bgcolor="#99cc99" style="color: #000000; text-align: center;">
<form id="Form1" runat=server>
    <div style="z-index: 101; left: 5px; width: 145px; position: absolute; top: 108px;
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
    <span style="font-size: 16pt; color: green; font-family: Verdana"><strong>Site Settings</strong></span>
    <div style="z-index: 102; left: 177px; width: 448px; position: absolute; top: 132px;
        height: 293px; background-color: darkseagreen; text-align: left">
        <br />
      <span style="font-family: Verdana">&nbsp;
            <asp:Label ID="l1" runat="server" Font-Names="Verdana" Font-Size="10pt" ForeColor="Maroon"
            Style="z-index: 100; left: 82px; position: absolute; top: 5px" Width="336px"></asp:Label>
            <br />
          &nbsp; <span style="font-size: 10pt">Main Banner</span> &nbsp; &nbsp;&nbsp;&nbsp;
          &nbsp;</span>&nbsp;
            <asp:FileUpload
                ID="FileUpload1" runat="server" BackColor="White" 
                ForeColor="Black" Style="position: static" BorderStyle="Solid" BorderWidth="1px" />
        <span style="font-size: 7pt; color: #ff3333; font-family: Verdana"><strong><span
            style="color: #cc0000">(380x60)<br />
        </span></strong></span>
        <br />
        <span style="font-family: Verdana">&nbsp; <span style="font-size: 10pt">Sub Banner &nbsp;</span> &nbsp; &nbsp; &nbsp; &nbsp;</span>
        <asp:FileUpload ID="FileUpload2"
                runat="server" BackColor="White" 
                ForeColor="Black" Style="position: static" Width="236px" BorderStyle="Solid" BorderWidth="1px" />
        <strong><span style="font-size: 7pt; color: #cc0000; font-family: Verdana">(80x80)</span></strong><br />
        <br />
        <span style="font-family: Verdana">&nbsp; <span style="font-size: 10pt">Site Heading
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span><asp:TextBox ID="t1" runat="server"
                BorderStyle="Solid" BorderWidth="1px" Style="position: static" Width="236px"></asp:TextBox><br />
        <br />
        &nbsp;<span style="font-family: Verdana"> &nbsp;<span style="font-size: 10pt">Site Description
            &nbsp; &nbsp; </span></span>
        <asp:TextBox ID="t2" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="53px"
            Style="position: static" TextMode="MultiLine" Width="236px"></asp:TextBox><br />
        <span style="font-family: Verdana"><span style="font-size: 10pt">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</span></span><br />
        &nbsp;&nbsp;<span style="font-family: Verdana"><span style="font-size: 10pt"></span></span><br />
        <br />
        <asp:Button ID="Button1" runat="server" BorderColor="#004000" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Style="z-index: 103; left: 145px; position: absolute;
            top: 251px" Text="Upload" Width="107px" OnClick="Button1_Click1" />
        &nbsp;
        <asp:Button ID="Button2" runat="server" BorderColor="#004000" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Style="z-index: 104; left: 277px; position: absolute;
            top: 251px" Text="Reset" Width="107px" OnClick="Button2_Click" />
    </div>
    <asp:Button ID="Button3" runat="server" BackColor="Silver" BorderColor="Green" BorderStyle="Solid"
        BorderWidth="1px" Font-Bold="True" ForeColor="Green" OnClick="Button1_Click"
        Style="z-index: 100; left: 356px; position: absolute; top: 490px" Text="Back"
        Width="114px" />
    <div style="z-index: 103; left: 178px; width: 484px; position: absolute; top: 433px;
        height: 32px; background-color: darkseagreen">
        <span style="font-size: 9pt; color: #cc0000; font-family: Verdana">Upload images with
            specified dimension. If you do not want to change an advertisement then left that
            field blank.</span></div>
        </form>

</body>

</html>

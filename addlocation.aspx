<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addlocation.aspx.cs" Inherits="WebSite_addlocation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Add Locations</title>
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
    <span style="font-size: 32pt; color: green; font-family: Verdana">        </span>
    <span style="font-size: 32pt; color: green; font-family: Verdana"><strong>Tourism</strong></span>&nbsp;<br />
    <br />
    <span style="font-size: 16pt; color: green; font-family: Verdana"><strong>&nbsp;&nbsp;
        Add Locations </strong></span>&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="Silver" BorderColor="Green" BorderStyle="Solid"
        BorderWidth="1px" Font-Bold="True" ForeColor="Green" OnClick="Button1_Click"
        Style="z-index: 100; left: 390px; position: absolute; top: 483px" Text="Back"
        Width="114px" CausesValidation="False" />
    <div style="z-index: 103; left: 250px; width: 342px; position: absolute; top: 170px;
        height: 222px; background-color: darkseagreen; text-align: left">
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1"
            ErrorMessage="*" Style="z-index: 100; left: 317px; position: absolute; top: 20px"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2"
            ErrorMessage="*" Style="z-index: 101; left: 317px; position: absolute; top: 72px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t3"
            ErrorMessage="*" Style="z-index: 111; left: 317px; position: absolute; top: 124px"></asp:RequiredFieldValidator>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
        <asp:TextBox ID="t1" runat="server" BorderStyle="Solid" BorderWidth="1px" Style="z-index: 103;
            left: 165px; position: absolute; top: 16px" Width="147px"></asp:TextBox>
        <asp:TextBox ID="t2" runat="server" BorderStyle="Solid" BorderWidth="1px" Style="z-index: 104;
            left: 165px; position: absolute; top: 68px" Width="147px"></asp:TextBox>
        <asp:TextBox ID="t3" runat="server" BorderStyle="Solid" BorderWidth="1px" Style="z-index: 105;
            left: 165px; position: absolute; top: 121px" Width="147px"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="10pt" ForeColor="DarkGreen"
            Style="z-index: 106; left: 8px; position: absolute; top: 17px" Text="Location Name"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="10pt" ForeColor="DarkGreen"
            Style="z-index: 107; left: 8px; position: absolute; top: 69px" Text="Location Description"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="10pt" ForeColor="DarkGreen"
            Style="z-index: 108; left: 8px; position: absolute; top: 122px" Text="Location Route"></asp:Label>
        <asp:Button ID="Button2" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True"
            ForeColor="#004000" Style="z-index: 109; left: 165px; position: absolute; top: 165px"
            Text="Submit" Width="150px" OnClick="Button2_Click" />
        <asp:Label ID="l1" runat="server" Font-Names="Verdana" Font-Size="10pt" ForeColor="#CC0000"
            Style="z-index: 110; left: 127px; position: absolute; top: 195px"
            Width="194px"></asp:Label>
    </div>
        </form>
</body>

</html>



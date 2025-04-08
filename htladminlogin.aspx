<%@ Page Language="C#" AutoEventWireup="true" CodeFile="htladminlogin.aspx.cs" Inherits="WebSite_htladminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#99cc99">
    <form id="form1" runat="server">
    <div style="text-align: center">
        <div style="z-index: 101; left: 323px; width: 336px; position: absolute; top: 122px;
            height: 163px; background-color: darkseagreen">
            <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="10pt" Style="z-index: 100;
                left: 19px; position: absolute; top: 21px" Text="user id" ForeColor="DarkOliveGreen"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="10pt" Style="z-index: 101;
                left: 19px; position: absolute; top: 57px" Text="password" ForeColor="DarkOliveGreen"></asp:Label>
            <asp:TextBox ID="t1" runat="server" BorderStyle="None" Style="z-index: 102; left: 166px;
                position: absolute; top: 20px" Width="160px"></asp:TextBox>
            <asp:TextBox ID="t2" runat="server" BorderStyle="None" Style="z-index: 103; left: 166px;
                position: absolute; top: 56px" Width="160px" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                Font-Size="9pt" OnClick="Button1_Click" Style="z-index: 104; left: 166px; position: absolute;
                top: 105px" Text="Login" />
            <asp:Label ID="l1" runat="server" Font-Names="Verdana" Font-Size="9pt" ForeColor="#FF3300"
                Style="z-index: 107; left: 62px; position: absolute; top: 135px" Width="282px"></asp:Label>
            <asp:Button ID="Button2" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Size="9pt"
                OnClick="Button2_Click" Style="z-index: 106; left: 235px; position: absolute;
                top: 105px" Text="Home Page" Width="93px" />
        </div>
        <strong><span style="font-size: 24pt; color: #008000; font-family: Verdana">
            <br />
            Hotel Admin Login</span></strong>
        <asp:Button ID="Button3" runat="server" BorderStyle="Solid" BorderWidth="1px" Style="z-index: 102;
            left: 397px; position: absolute; top: 325px" Text="Register New Hotel Admin" Width="196px" OnClick="Button3_Click" />
    
    </div>
    </form>
</body>
</html>

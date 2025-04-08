<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editpackage.aspx.cs" Inherits="WebSite_editpackage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
    <title>Edit Packages</title>
    <style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:452px;
	height:244px;
	z-index:105;
	left: 327px;
	top: 140px;
	background-color: #8FBC8F;
}
.style11 {color: #215432}
.style14 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; }
.style26 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 11px; color: #FF0000; }
.style28 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 13px; }
.style34 {font-family: Verdana, Arial, Helvetica, sans-serif}
-->
    </style>
</head>
<body bgcolor="#99cc99" style="text-align: center">
  <form id="Form1" runat=server>
        <span style="font-size: 24pt; font-family: Verdana">
        <p><strong><span style="font-size: 20pt"> Tourism - Package Admin &nbsp;&nbsp;&nbsp;<br />
        </span><span style="font-size: 14pt">
            <br />
            Edit Packages</span></strong></p>
        <table border="0" align="center" bordercolor="#142114" style="z-index: 100; width: 285px; height: 328px;">
          <tr bgcolor="#8FBC8F">
            <td colspan="2" style="height: 17px"><div align="center" class="style26"> <strong>
              <asp:Label CssClass="style23" ID="l1" runat="server" />        
            </strong></div></td>
          </tr>
          <tr bgcolor="#8FBC8F" style="font-size: 9pt">
            <th colspan="2" class="style14" style="height: 25px"><strong><span class="style28"><span class="style26"></span><span style="background-color: #8fbc8f"> Add Package </span></span></strong></th>
          </tr>
          <tr style="font-size: 9pt; background-color: #8fbc8f">
            <td height="30" align="left" bgcolor="#8FBC8F" class="style14" style="width: 272px"><strong><span style="font-size: 10pt">Pack </span>Id </strong></td>
            <td height="30" bgcolor="#8FBC8F" style="width: 508px"><strong><span class="style11"><span
                  style="font-size: 10pt"> </span>
                    <asp:DropDownList ID="DDL1" runat="server" AutoPostBack="True" Width="110px" TabIndex="2" OnSelectedIndexChanged="DDL1_SelectedIndexChanged"></asp:DropDownList>
              <span style="font-size: 10pt"> </span> </span></strong></td>
          </tr>
          <tr style="font-size: 10pt">
            <td height="30" align="left" bgcolor="#8FBC8F" class="style14" style="width: 272px"><strong>Hotel Id </strong></td>
            <td height="30" bgcolor="#8FBC8F" style="font-size: 10pt; width: 508px;"><strong><span class="style11">&nbsp;<asp:DropDownList ID="DDL2" runat="server" AutoPostBack="True" Width="110px" TabIndex="2" OnSelectedIndexChanged="DDL1_SelectedIndexChanged" style="position: static">
                </asp:DropDownList>
              <span> </span> </span></strong></td>
          </tr>
          <tr style="font-size: 10pt">
            <td height="30" align="left" bgcolor="#8FBC8F" class="style14" style="width: 272px"><strong><span class="style34" style="height: 39px; font-size: 12px; color: #000000; background-color: #8fbc8f;">No. Days</span></strong></td>
            <td height="30" bgcolor="#8FBC8F" style="background-color: #8fbc8f; width: 508px;"><strong><span style="height: 39px"><span class="style11">
              <asp:TextBox ID="t3" TabIndex="3" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
              <span
                  style="font-size: 12pt"> </span> </span></span></strong></td>
          </tr>
          <tr bgcolor="#8FBC8F" style="font-size: 12pt">
            <td height="26" align="left" class="style14" style="width: 272px"><p><strong>No. Nights </strong></p></td>
            <td class="style14" style="width: 508px"><strong><span class="style11">
              <asp:TextBox ID="t4" TabIndex="4" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
              <span
                  style="font-size: 10pt"> </span> </span></strong></td>
          </tr>
          <tr style="font-size: 10pt">
            <td height="30" align="left" bgcolor="#8FBC8F" class="style14" style="width: 272px"><strong>No. of People </strong></td>
            <td height="30" bgcolor="#8FBC8F" style="width: 508px"><strong><span class="style11">
              <asp:TextBox ID="t5" TabIndex="5" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
              <span
                  style="font-size: 12pt"> <span> </span></span> </span></strong></td>
          </tr>
          <tr>
            <td height="30" align="left" bgcolor="#8FBC8F" class="style14" style="width: 272px"><strong>Rate</strong></td>
            <td height="30" bgcolor="#8FBC8F" style="font-size: 24pt; width: 508px;"><strong><span class="style11">
              <asp:TextBox ID="t6" TabIndex="6" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
              <span> </span> </span></strong></td>
          </tr>
          <tr style="font-size: 24pt">
            <td align="left" bgcolor="#8FBC8F" class="style14" style="height: 26px; width: 272px;"><strong>Description</strong></td>
            <td bgcolor="#8FBC8F" style="font-size: 24pt; height: 26px; width: 508px;"><strong><span class="style11">
              <asp:TextBox ID="t7" TabIndex="7" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
              <span
                  style="font-size: 12pt"> <span> </span></span> </span></strong></td>
          </tr>
          <tr style="font-size: 24pt">
            <td height="10" bgcolor="#8FBC8F" style="width: 272px">&nbsp;</td>
            <td bgcolor="#8FBC8F" style="width: 508px"><strong><span class="style11">
              <asp:Button ID="btnAdd" TabIndex="8"  runat="server" Font-Size="10pt" Text="Edit Package" Width="113px" BorderStyle="solid" ForeColor="#004000" Font-Bold="false" BorderWidth="1px" BorderColor="Green" OnClick="btnAdd_Click"></asp:Button>
              <span style="font-size: 10pt"> </span> </span></strong></td>
          </tr>
    </table>
        
                                 <div style="z-index: 102; left: 13px; width: 117px; position: absolute; top: 106px;
                height: 277px; background-color: darkseagreen; text-decoration: none; font-family: Verdana;">
                <span style="font-size: 10pt">
                    <br />
                    <span style="color: darkolivegreen">
                        <br />
                        <span style="font-size: 11pt"><a href="htladminpage.aspx" > <span style="color: darkolivegreen">
                            Home</span></a><br />
                            <br /><a href="hoteladmin.aspx"> <span style="color: darkolivegreen">Hotel<br /></span></a>
                                <br />
                                <a href="htlroomsadmin.aspx"> <span style="color: darkolivegreen">Rooms<br /></span></a>
                            
                            <br /><a href="htlpackageadmin.aspx"> <span style="color: darkolivegreen">Packages</span></a><br />
                            
                            <br /><a href="htlenquiryadmin.aspx"> <span style="color: darkolivegreen">Enquiries<br /></span>
                                <br /></a>
                                <a href="htladminsettings.aspx"> <span style="color: darkolivegreen">Settings<br />
                            </span></a>
                            
                            <br /><a href="htladminlogout.aspx"><span style="color: darkolivegreen">Logout</span></a><br />
                            </span>
            </div>
                            </span>
      <br />
      <a href="htladminpage.aspx"> <strong><span style="font-size: 10pt; font-family: Verdana">
          Back</span></strong></a><br />
      <span style="font-size: 10pt">&nbsp; </span>
</form>
</body>
</html>
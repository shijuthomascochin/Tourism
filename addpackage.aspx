<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addpackage.aspx.cs" Inherits="WebSite_addpackage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
    <title>Add Packages</title>
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
.style36 {color: #215432; font-weight: bold; }
.style37 {font-weight: bold}
-->
    </style>
</head>
<body bgcolor="#99cc99" style="text-align: center">
  <form id="Form1" runat=server>
        <span style="font-size: 24pt; font-family: Verdana">
        <p><strong><span style="font-size: 20pt"> Tourism - Package Admin &nbsp;&nbsp;<br />
        </span><span style="font-size: 14pt">
            <br />
        Add Package</span></strong></p>
        <p><strong><span style="font-size: 14pt">
         
        <table width="335" height="291" border="0" align="center" bordercolor="#142114" style="position: static">
          <tr bgcolor="#8FBC8F">
            <td colspan="3" style="height: 17px"><div align="center" class="style26">
                <asp:Label CssClass="style23" ID="l1" runat="server" /></div></td>
          </tr>
          <tr align="center" bgcolor="#8FBC8F" style="font-size: 9pt">
            <th height="30" colspan="3" class="style14" style="height: 25px"><span class="style28"><span class="style26"></span><span style="background-color: #8fbc8f">
                    Add Package </span></span></th>
          </tr>
          <tr align="center" style="font-size: 9pt; background-color: #8fbc8f">
            <td width="107" height="30" bgcolor="#8FBC8F" class="style14" align="center">
                <span style="font-size: 10pt">Pack I</span>d
            </td>
            <td width="152" height="30" bgcolor="#8FBC8F" align="center"><span class="style11">
              <asp:TextBox ID="t1" TabIndex="1" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="115px" Height="16px" BorderStyle="Solid" BorderWidth="1px" style="position: static"></asp:TextBox><span
                  style="font-size: 10pt">&nbsp; </span>
            </span></td>
            <td width="100" height="30" bgcolor="#8FBC8F" align="center"><span class="style37" style="font-size: 10pt">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                      runat="server" ControlToValidate="t1" ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator>
            </span></td>
          </tr>
          <tr align="center">
            <td height="30" bgcolor="#8FBC8F" class="style14" align="center">Hotel Id </td>
            <td height="30" bgcolor="#8FBC8F" align="center">
            <asp:DropDownList ID="DDL1" runat="server" DataSourceID="SDS1" DataTextField="htl_id" DataValueField="htl_id" AutoPostBack="true" Width="115px" TabIndex="2" style="position: static"></asp:DropDownList>&nbsp;            </td>
            <td height="30" bgcolor="#8FBC8F" align="center">&nbsp;</td>
          </tr>

          <tr align="center">
            <td height="30" bgcolor="#8FBC8F" class="style14" align="center"><span class="style34" style="height: 39px; font-size: 12px; color: black;">No. Days</span></td>
            <td height="30" bgcolor="#8FBC8F" align="center"><span style="height: 39px"><span class="style11">
              <asp:TextBox ID="t3" TabIndex="3" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="115px" Height="16px" BorderStyle="Solid" BorderWidth="1px" style="position: static"></asp:TextBox>
            </span></span></td>
            <td height="30" bgcolor="#8FBC8F" align="center"><span style="font-size: 10pt"><strong>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                      runat="server" ControlToValidate="t3" ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator>
              <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="t3" ErrorMessage="*"
                      MaximumValue="9" MinimumValue="0" Style="position: static"></asp:RangeValidator>
            </strong></span></td>
          </tr>
          <tr align="center" bgcolor="#8FBC8F">
            <td height="30" class="style14" align="center"><p>No. Nights </p></td>
            <td height="30" class="style14" align="center"><span class="style11">
             <asp:TextBox ID="t4" TabIndex="4" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="115px" Height="16px" BorderStyle="Solid" BorderWidth="1px" style="position: static"></asp:TextBox>
            </span></td>
            <td height="30" class="style14" align="center"><span class="style36">
              <asp:RequiredFieldValidator
                 ID="RequiredFieldValidator4" runat="server" ControlToValidate="t4" ErrorMessage="*"
                 Style="position: static" Width="15px"></asp:RequiredFieldValidator>
              <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="t4" ErrorMessage="*"
                    MaximumValue="9" MinimumValue="0" Style="position: static"></asp:RangeValidator>
            </span></td>
          </tr>
          <tr align="center">
            <td height="30" bgcolor="#8FBC8F" class="style14" align="center">No. of People </td>
            <td height="30" bgcolor="#8FBC8F" align="center"><span class="style11">
              <asp:TextBox ID="t5" TabIndex="5" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="115px" Height="16px" BorderStyle="Solid" BorderWidth="1px" style="position: static"></asp:TextBox>
            </span></td>
            <td height="30" bgcolor="#8FBC8F" align="center"><span style="font-size: 12pt">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                      runat="server" ControlToValidate="t5" ErrorMessage="*" Style="position: static"
                      Width="2px"></asp:RequiredFieldValidator>
              <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="t5" ErrorMessage="*"
                      MaximumValue="9" MinimumValue="0" Style="position: static"></asp:RangeValidator>
            </span></td>
          </tr>
          <tr align="center">
            <td height="30" bgcolor="#8FBC8F" class="style14" align="center">Rate</td>
            <td height="30" bgcolor="#8FBC8F" align="center"><span class="style11">
              <asp:TextBox ID="t6" TabIndex="6" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="115px" Height="16px" BorderStyle="Solid" BorderWidth="1px" style="position: static"></asp:TextBox>
            </span></td>
            <td height="30" bgcolor="#8FBC8F" align="center"><span style="font-size: 10pt">
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                      runat="server" ControlToValidate="t5" ErrorMessage="*" Style="position: static"
                      Width="1px"></asp:RequiredFieldValidator>
              <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="t6" ErrorMessage="*"
                      MaximumValue="9" MinimumValue="0" Style="position: static"></asp:RangeValidator>
            </span></td>
          </tr>
          <tr align="center">
            <td height="30" bgcolor="#8FBC8F" class="style14" style="height: 26px" align="center">Description</td>
            <td height="30" bgcolor="#8FBC8F" style="font-size: 10pt; height: 26px; font-family: Verdana;" align="center"><span class="style11">
              <asp:TextBox ID="t7" TabIndex="7" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="115px" Height="16px" BorderStyle="Solid" BorderWidth="1px" style="position: static"></asp:TextBox>
            </span></td>
            <td height="30" bgcolor="#8FBC8F" style="font-size: 10pt; height: 26px; font-family: Verdana;" align="center"><span class="style11"><span></span> <span style="font-weight: bold">
              <asp:RequiredFieldValidator
                  ID="RequiredFieldValidator2" runat="server" ControlToValidate="t6" ErrorMessage="*"
                  Style="position: static" Width="1px"></asp:RequiredFieldValidator>
            </span> <span style="font-weight: bold"></span></span></td>
          </tr>
          <tr align="center" style="font-size: 10pt; font-family: Verdana;">
            <td height="30" bgcolor="#8FBC8F">&nbsp;</td>
            <td height="30" colspan="2" bgcolor="#8FBC8F"><span class="style11">
              <asp:Button ID="btnAdd" TabIndex="8"  runat="server" Font-Size="10pt" Text="Add Package" Width="113px" BorderStyle="solid" ForeColor="#004000" Font-Bold="false" BorderWidth="1px" BorderColor="Green" OnClick="btnAdd_Click"></asp:Button><span style="font-size: 10pt"> </span>
            </span></td>
          </tr>
    </table>
              <asp:SqlDataSource ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
                  SelectCommand="SELECT [htl_id] FROM [Hotel_Details] WHERE ([adm_id] = @adm_id)">
                  <SelectParameters>
                      <asp:SessionParameter Name="adm_id" SessionField="hoteladmin" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
            <br />
        </span>
        </strong>
        </p>
       
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
</form>
</body>
</html>



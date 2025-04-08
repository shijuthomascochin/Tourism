<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addrooms.aspx.cs" Inherits="WebSite_addrooms" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
<!--
.style1 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style2 {font-size: 14px}
.style3 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; }
.style4 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12pt; }
.style6 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 22px; }
-->
    </style>
</head>
<body bgcolor="#99cc99" style="text-align: center">
<form id="Form1" runat=server>
      <div align="center"><strong><span style="font-size: 20pt; font-family: Verdana;">Tourism - Hotel Admin<br />
          </span>
          <br />
      </strong>      </div>
      <div style="z-index: 103; left: 13px; width: 117px; position: absolute; top: 106px;
                height: 277px; background-color: darkseagreen; text-decoration: none; font-family: Verdana;">
                
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
        </span>      </div>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        
      <table border="0" bordercolor="#142114" height="291" style="z-index: 105; left: 183px; position: absolute; top: 99px; text-decoration: none; height: 290px;" width="338">
          <tr bgcolor="#8fbc8f">
              <td colspan="2" style="height: 17px">
                  <div align="center" class="style26">
                      <asp:Label ID="l1" runat="server" CssClass="style23" Font-Names="Verdana" Font-Size="10pt" ForeColor="#C00000"></asp:Label></div>              </td>
          </tr>
          <tr bgcolor="#8fbc8f" style="font-size: 9pt">
              <th class="style14" colspan="2" style="height: 25px">
                  <span class="style28"><span class="style4" style="background-color: #8fbc8f">
                      Add Rooms</span></span></th>
          </tr>
          <tr style="background-color: #8fbc8f">
              <td width="107" align="left" bgcolor="#8fbc8f" class="style14 style1 style2" style="height: 34px">
                  Room Id</td>
              <td bgcolor="#8fbc8f" style="height: 34px" align="left">
                  <span class="style11">
                      <asp:TextBox ID="t1" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                Font-Size="8pt" Height="16px" TabIndex="1" Width="110px"></asp:TextBox><span style="font-size: 10pt">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1"
                                        ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator></span></span></td>
          </tr>
          <tr>
              <td height="30" align="left" bgcolor="#8fbc8f" class="style14 style1 style2">
                  Hotel Id              </td>
              <td bgcolor="#8fbc8f" height="30" align="left">
                <asp:DropDownList ID="DDL1" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="DDL1_SelectedIndexChanged" Width="109px">                </asp:DropDownList>              </td>
          </tr>
          <tr>
              <td height="30" align="left" bgcolor="#8fbc8f" class="style14 style1 style2">
                       
                     Room Type</td>
              <td bgcolor="#8fbc8f" height="30" style="background-color: #8fbc8f" align="left">
                       
                      <asp:TextBox ID="t3" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                Font-Size="8pt" Height="16px" TabIndex="3" Width="110px"></asp:TextBox><span style="font-size: 10pt">              
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t3"
                                        ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator></td>
          </tr>
          <tr bgcolor="#8fbc8f">
              <td align="left" class="style14" height="26">
                  <p class="style3">
                      Room
              Rate</p>              </td>
              <td class="style14" align="left">
                        
                      <asp:TextBox ID="t4" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                Font-Size="8pt" Height="16px" TabIndex="4" Width="110px"></asp:TextBox>              
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t4"
                      ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator>
                  <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="t4" ErrorMessage="*"
                      MaximumValue="9" MinimumValue="0" Style="position: static"></asp:RangeValidator></td>
          </tr>
          <tr>
              <td height="30" align="left" bgcolor="#8fbc8f" class="style14 style1 style2">
                  Room
                  Description</td>
              <td bgcolor="#8fbc8f" height="30" align="left">
                  <span class="style11">
                      <asp:TextBox ID="t5" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                Font-Size="8pt" Height="16px" TabIndex="5" Width="110px"></asp:TextBox><span style="font-size: 12pt">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="t5"
                                        ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator><span></span></span></span></td>
          </tr>
          <tr style="font-size: 24pt">
              <td bgcolor="#8fbc8f" height="26">&nbsp;            </td>
              <td bgcolor="#8fbc8f" align="left">
                        
                      <asp:Button ID="btnAdd" runat="server" BorderColor="Green" BorderStyle="solid" BorderWidth="1px"
                                Font-Bold="false" Font-Size="10pt" ForeColor="#004000" OnClick="btnAdd_Click"
                                TabIndex="8" Text="Add Rooms" Width="113px" /><span style="font-size: 10pt"> </span>              </td>
          </tr>
  </table>
      <span class="style1" style="font-size: 18pt"><strong>Add Rooms</strong></span>
</form>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="Content-Language" content="en-us"><title>Tourism</title>

<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<style type="text/css">
<!--
.style10 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 36px;
	font-weight: bold;
	color: #215432;
}
.style11 {color: #215432}
.style14 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; }
.style19 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 10px; }
.style21 {font-size: 12px}
.style23 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 11px; }
.style25 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 14px; }
.style26 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 11px; color: #FF0000; }
.style28 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 13px; }
.style29 {font-family: Verdana, Arial, Helvetica, sans-serif}
-->
</style>
</head><body bgcolor="#99cc99" style="color: #000000">
<form id="form2" name="form2" method="post" action="" runat =server>
<table width="700" height="788" border="0" align="center" bgcolor="#ABD6AB" id="main">
  <tr>
    <th height="52" colspan="3" scope="row"><span class="style10">Tourism</span></th>
  </tr>
  <tr>
    <th height="112" colspan="3" scope="row"><img src="../Site_Pics/main_banner.jpg" width="639" height="110" /></th>
  </tr>
  <tr>
    <th width="107" rowspan="4" align="center" valign="top" scope="row"><table width="103" border="1" align="center" bordercolor="#ABD6AB" bgcolor="#ADC7BA">
      <tr>
        <th width="93" height="37" scope="row"><span class="style14"><a href=index.aspx> Home</a></span></th>
          </tr>
      <tr>
        <th height="46" scope="row"><span class="style14"><a href=showhotels.aspx>Hotels</a></span></th>
          </tr>
      <tr>
        <th height="41" scope="row"><span class="style14"><a href=showpackage.aspx>Packages</a></span></th>
          </tr>
      <tr>
        <th height="39" scope="row"><span class="style14"><a href="showlocations.aspx">Location</a></span></th>
          </tr>
      
      </table>
      <span class="style11"></span><span class="style11"></span>
        <br />
      <table width="120" border="0" align="center">
        <tr>
          <td width="114" style="height: 91px"><div align="center"><img src="../Ad_Pics/1.jpg" /></div></td>
        </tr>
        <tr>
          <td style="height:91px"><div align="center"><img src="../Ad_Pics/2.jpg" /></div></td>
        </tr>
        <tr>
          <td style="height: 91px"><div align="center"><img src="../Ad_Pics/3.jpg" /></div></td>
        </tr>
        <tr>
          <td style="height: 91px"><div align="center"><img src="../Ad_Pics/4.jpg" /></div></td>
        </tr>
      </table></th>
    <td bgcolor="#ABD6AB" style="width: 424px"><div align="center"><span class="style11"></span><img src="../Site_Pics/sub_banner.jpg" alt="Site Description" width="371" height="42" /></div></td>
    <td width="200" rowspan="4" align="center" valign="top" bgcolor="#A3D1A3">
      <table width="191" border="0" align="center" bgcolor="#ADC7BA">
        <tr>
          <th width="161" scope="col"><span class="style23">User Name </span></th>
          </tr>
        <tr>
          <td><center class="style19">
            <asp:TextBox BorderStyle="solid" BorderWidth="1" ID="t1" runat="server" />          
            </center>          </td>
          </tr>
        <tr>
          <td><div align="center" class="style23">Password</div></td>
          </tr>
        <tr>
          <td><center class="style19">
            <asp:TextBox BorderWidth="1" ID="t2" runat="server" TextMode="Password" />          
            </center>          </td>
          </tr>
        <tr>
          <td style="height: 26px"><span class="style19">
            <center>
              <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CausesValidation="False"  />                        
              </center>
                
</span></td>
          </tr>
        <tr>
          <td height="31">            <center>
            <div align="center" class="style23"><span class="style19">
              </span><span class="style19">
                <asp:Label Font-Size="8pt" ForeColor="Red" ID="l1" runat="server" />              
                </span></div>
              </center></td>
          </tr>
        <tr>
          <td height="31"><span class="style19"><span class="style21"><center><asp:HyperLink CssClass="style14" ID="reg" NavigateUrl="register.aspx" runat="server" Text="Register"></asp:HyperLink>&nbsp;
            </center>
            </span></span></td>
          </tr>
        <tr>
          <td height="16"><center class="style19">
            <span class="style14">
              <asp:HyperLink ID="htladmin" NavigateUrl="htladminlogin.aspx" runat="server" Text="Hotel Admin Login"></asp:HyperLink>
              </span>
            </center>          </td>
          </tr>
      </table>      <span class="style11"></span><span class="style11"></span>
      <table width="200" height="180" border="1" align="center" bordercolor="#000000">
          <tr>
            <th height="26" bordercolor="#ABD6AB" bgcolor="#61B461" style="height: 8px" scope="col"><span class="style29">Hotels</span></th>
          </tr>
          <% 
            
              System.Data.DataTable dt = new System.Data.DataTable();
              ConDbLib.CDatabase objdb = new ConDbLib.CDatabase();
            try
            {
                int i = 4;
                objdb.OpenConnection();
                dt = objdb.getRecord("select htl_id,htl_name,htl_description from Hotel_Details ");
                foreach (System.Data.DataRow dr in dt.Rows)
                {
                    if (i == 0) break;
                    i--;
                    Response.Write("  <tr>  <td height=81 align=center bordercolor=#000000> <img src=\"../Hotel_Pics/" + dr[0] + ".jpg\" /><br>");
                    Response.Write("<a href=hoteldetails.aspx?htlID=" + dr[0] + ">" + dr[1] + "<a><br>");
                    Response.Write("" + dr[2] + " <br></td></tr>");

                }
                objdb.close();
            }
            catch (Exception)
            {
                Response.Write(objdb.Error);
            }
		%>
      </table>   <p>&nbsp;</p></td>
  </tr>
  
  <tr>
    <td style="height: 12px; width: 424px;"><p align="center">
        <span style="color: #ff0066"><strong><span style="font-family: Verdana">
         <%
       try
        {
            objdb.OpenConnection();
            dt = objdb.getRecord("select site_head from Site_Details ");
            foreach (System.Data.DataRow dr in dt.Rows)
            {
                Response.Write(dr[0].ToString());
            }
        }
        catch (Exception)
        {
            Response.Write("Site");
        }
        
        %>
        </td>
  </tr>
  <tr>
    <td style="height: 32px; width: 424px;"><div align="center"><img src="../Ad_Pics/mainad.jpg" alt="Site Description" width="371" height="42" /></div></td>
  </tr>
  <tr>
    <td valign="top" style="width: 424px"><table width="318" height="311" border="0" align="center" bordercolor="#000000">
      <tr>
        <td colspan="2" bgcolor="#ADC7BA"><div align="center" class="style26">
            <asp:Label CssClass="style23" ID="l2" runat="server" />      
        </div></td>
      </tr>
          <tr>
            <th colspan="2" bgcolor="#ADC7BA" class="style14"><span class="style28"><span class="style26"></span>New User Registration</span></th>
          </tr>
          <tr>
            <td width="134" bgcolor="#ADC7BA" class="style14">User Id </td>
            <td width="174" bgcolor="#ADC7BA"><span class="style11">
              <asp:TextBox ID="t10" TabIndex="1" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="t10"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator></span></td>
          </tr>
          <tr>
            <td bgcolor="#ADC7BA" class="style14">Password</td>
            <td bgcolor="#ADC7BA"><span class="style11">
              <asp:TextBox ID="t11" TabIndex="2" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="None" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t11"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator></span></td>
          </tr>
          <tr>
            <td bgcolor="#ADC7BA" class="style14">Re-type password </td>
            <td bgcolor="#ADC7BA"><span class="style11">
              <asp:TextBox ID="t3" TabIndex="3" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="None" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t3"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator>
            </span></td>
          </tr>
          <tr>
            <td bgcolor="#ADC7BA" class="style14">Name</td>
            <td bgcolor="#ADC7BA"><span class="style11">
              <asp:TextBox ID="t4" TabIndex="4" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t4"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="t4"
                    ErrorMessage="*" Style="position: static" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator></span></td>
          </tr>
          <tr>
            <td bgcolor="#ADC7BA" class="style14">Phone No. </td>
            <td bgcolor="#ADC7BA"><span class="style11">
              <asp:TextBox ID="t5" TabIndex="5" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="t5"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="t5" ErrorMessage="*"
                    MaximumValue="9" MinimumValue="0" Style="position: static"></asp:RangeValidator></span></td>
          </tr>
          <tr>
            <td bgcolor="#ADC7BA" class="style14">Mobile</td>
            <td bgcolor="#ADC7BA"><span class="style11">
              <asp:TextBox ID="t6" TabIndex="6" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="t6"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator>&nbsp;
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="t6" ErrorMessage="*"
                    MaximumValue="9" MinimumValue="0" Style="position: static"></asp:RangeValidator></span></td>
          </tr>
          <tr>
            <td bgcolor="#ADC7BA" class="style14">Email</td>
            <td bgcolor="#ADC7BA"><span class="style11">
              <asp:TextBox ID="t7" TabIndex="7" runat="server" Font-Size="8pt" Font-Names="Verdana" Width="110px" Height="16px" BorderStyle="None"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="t7"
                    ErrorMessage="*" Style="position: static"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="t7"
                    ErrorMessage="*" Style="position: static" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></span></td>
          </tr>
          <tr>
            <td bgcolor="#ADC7BA" style="height: 26px">&nbsp;</td>
            <td bgcolor="#ADC7BA" style="height: 26px"><span class="style11">
              <asp:Button ID="Button2" TabIndex="8" OnClick="Button2_Click" runat="server" Font-Size="10pt" Text="Submit" Width="59px" BorderStyle="solid" ForeColor="#004000" Font-Bold="false" BorderWidth="1px" BorderColor="Green"></asp:Button>&nbsp;
            </span></td>
          </tr>
        </table>
            
      <p class="style25"><a href="index.aspx">Back</a></p></td>
  </tr>
</table>
</form>
</body></html>

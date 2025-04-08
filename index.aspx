<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

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
.style25 {
	color: #FF0000;
	font-weight: bold;
}
.style26 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
}
.style27 {font-family: Verdana, Arial, Helvetica, sans-serif}
-->
</style>
<script language="javascript" type="text/javascript">
<!--

function TABLE1_onclick() {

}

// -->
</script>
</head><body bgcolor="#99cc99" style="color: #000000">

<form action="" method="post" name="form1" id="form1" runat="server">
<table width="700" height="817" border="0" align="center" bgcolor="#ABD6AB" id="main">
  <tr>
    <th height="52" colspan="3" scope="row"><span class="style10">Tourism</span></th>
  </tr>
  <tr>
    <th height="112" colspan="3" scope="row"><img src="../Site_Pics/main_banner.jpg" width="639" height="110" /></th>
  </tr>
  <tr>
    <th width="107" rowspan="5" align="center" valign="top" scope="row"><table width="103" border="1" align="center" bordercolor="#ABD6AB" bgcolor="#ADC7BA" id="TABLE1" language="javascript" onclick="return TABLE1_onclick()">
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
        <th height="39" scope="row"><span class="style14"><a href=showlocations.aspx>Locations</a></span></th>
        </tr>
      
      </table>
        <br />
      <table width="117" border="0" align="center">
        <tr>
          <td width="111" style="height: 91px"><div align="center"><img src="../Ad_Pics/1.jpg" /></div></td>
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
    <td bgcolor="#ABD6AB" style="height: 16px"><span class="style23">Welcome
        <asp:Label ID="l3" runat="server" >Guest</asp:Label>        

[
<asp:HyperLink ID="lik" NavigateUrl="logoutuser.aspx" runat="server" Text="Logout"></asp:HyperLink>&nbsp;
        &nbsp;
        <asp:HyperLink ID="set1" runat="server" NavigateUrl="usersettings.aspx" Style="position: static"
            Text="Settings" Width="44px"></asp:HyperLink>
        ]</span></td>
    <td rowspan="5" align="center" valign="top" bgcolor="#A3D1A3" style="width: 216px">
      <table width="191" border="0" align="center" bgcolor="#ADC7BA">
        <tr>
          <th width="161" class="style23" scope="col"><div align="center">
            <asp:Label ID="Label1" Text="User Name" runat="server" />
          </div></th>
          </tr>
        <tr>
          <td><center class="style19">
            <asp:TextBox BorderStyle="solid" BorderWidth="1" ID="t1" runat="server" />          
            </center>          </td>
          </tr>
        <tr>
          <td><div align="center" class="style23">
            <asp:Label ID="Label2" Text="Password" runat="server" />
          </div></td>
          </tr>
        <tr>
          <td><center class="style19">
            <asp:TextBox BorderWidth="1" ID="t2" runat="server" TextMode="Password" />          
            </center>          </td>
          </tr>
        <tr>
          <td><span class="style19">
            <center>
              <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" />                        
              </center>
                
</span></td>
          </tr>
        <tr>
          <td height="31">            <center>
              <p class="style19">
                <asp:Label CssClass="style23" Font-Size="9pt" ForeColor="Red" ID="l1" runat="server" Font-Bold="False" Font-Names="Verdana" />              </p>
          </center></td>
          </tr>
        <tr>
          <td height="31"><span class="style19"><span class="style21"><center><asp:HyperLink CssClass="style14" ID="reg" NavigateUrl="register.aspx" runat="server" Text="Register"></asp:HyperLink>
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
        </table>      
        <table width="200" height="180" border="1" align="center" bordercolor="#000000">
          <tr>
            <th height="26" bordercolor="#ABD6AB" bgcolor="#61B461" style="height: 8px" scope="col"><span class="style27">Hotels</span></th>
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
          </table></td>
  </tr>
  <tr style="font-size: 12pt">
    <td width="424" height="68" bgcolor="#ABD6AB"><div align="center"><span class="style11"></span><img src="../Site_Pics/sub_banner.jpg" alt="Site Description" width="371" height="42" /></div></td>
  </tr>
  <tr style="font-size: 12pt">
    <td height="37"><p align="center" class="style25"><span style="font-family: Verdana">
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
    </span></p></td>
  </tr>
  <tr style="font-size: 12pt">
    <td height="59"><div align="center"><img src="../Ad_Pics/mainad.jpg" alt="Site Description" width="371" height="42" /></div></td>
  </tr>
  <tr style="font-size: 12pt">
    <td valign="top" style="text-align: justify">
        <span style="font-family: Verdana"><span class="style26" style="font-size: 11pt; color: darkgreen">
        <%
        try
        {
            objdb.OpenConnection();
            dt = objdb.getRecord("select site_description from Site_Details ");
            foreach (System.Data.DataRow dr in dt.Rows)
            {
                Response.Write(dr[0].ToString());
            }
        }
        catch (Exception)
        {
            Response.Write("Site Description");
        }
        
        %>
        </span></span></td>
  </tr>
</table>
</form> 
 
</body></html>

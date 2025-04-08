<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiryok.aspx.cs" Inherits="WebSite_enquiryok" %>

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
    <th width="107" rowspan="5" align="center" valign="top" scope="row"><table width="103" border="1" align="center" bordercolor="#ABD6AB" bgcolor="#ADC7BA">
      <tr>
      <%
          string user=Session["user"].ToString(); %>
        <th width="93" height="37" scope="row"><span class="style14"><a href=home.aspx?log=ok&unam=<%=user%>> Home</a></span></th>
        </tr>
      <tr>
        <th height="46" scope="row"><span class="style14"><a href=showhotelsuser.aspx?log=ok&unam=<%=user%>>Hotels</a></span></th>
        </tr>
      <tr>
        <th height="41" scope="row"><span class="style14"><a href=showpackageuser.aspx?log=ok&unam=<%=user%>>Packages</a></span></th>
        </tr>
      <tr>
        <th height="39" scope="row"><span class="style14"><a href=showlocationsuser.aspx?log=ok&unam=<%=user%>>Locations</a></span></th>
        </tr>
      
      </table>
        <br />
      <table width="114" border="0" align="center">
        <tr>
          <td width="108" style="height: 91px"><div align="center"><img src="../Ad_Pics/1.jpg" /></div></td>
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
      </table>
      <p>&nbsp;</p></th>
    <td bgcolor="#ABD6AB" style="height: 16px"><span class="style23">Welcome
        <asp:Label ID="l3" runat="server" >Guest</asp:Label>        

[
<asp:HyperLink ID="lik" NavigateUrl="logoutuser.aspx" runat="server" Text="Logout"></asp:HyperLink>&nbsp;
        &nbsp;
        <asp:HyperLink ID="set1" runat="server" NavigateUrl="usersettings.aspx?log=ok&unam<%=user%>" Style="position: static"
            Text="Settings" Width="44px"></asp:HyperLink>
        ]</span></td>
    <td rowspan="5" valign="top" bgcolor="#A3D1A3" style="width: 216px">
        <table width="200" height="180" border="1" align="center" bordercolor="#000000">
          <tr>
            <th height="26" bordercolor="#ABD6AB" bgcolor="#61B461" style="height: 8px" scope="col"><span class="style27">Hotels</span></th>
          </tr>
          
          
          
          <% 
              ConDbLib.CDatabase objdb = new ConDbLib.CDatabase();
              System.Data.DataTable dt = new System.Data.DataTable();
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
        <span style="font-size: 10pt; font-family: Verdana"><span style="color: #cc0033">Enquiry
            successfully done... &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;<asp:Button
                ID="Button1" runat="server" BorderColor="#004000" BorderStyle="Solid" BorderWidth="1px"
                OnClick="Button1_Click1" Style="position: static" Text="Home" Width="89px" /></span></td>
  </tr>
  </table>
</form> 
 
</body></html>

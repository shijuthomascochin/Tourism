<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiryform.aspx.cs" Inherits="WebSite_enquiryform" %>

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
</head>
<script language = "Javascript">

var dtCh= "/";
var minYear=2007;
var maxYear=2010;

function isInteger(s){
	var i;
    for (i = 0; i < s.length; i++){   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9"))) return false;
    }
    // All characters are numbers.
    return true;
}

function stripCharsInBag(s, bag){
	var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not in bag, append to returnString.
    for (i = 0; i < s.length; i++){   
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function daysInFebruary (year){
	// February has 29 days in any year evenly divisible by four,
    // EXCEPT for centurial years which are not also divisible by 400.
    return (((year % 4 == 0) && ( (!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28 );
}
function DaysArray(n) {
	for (var i = 1; i <= n; i++) {
		this[i] = 31
		if (i==4 || i==6 || i==9 || i==11) {this[i] = 30}
		if (i==2) {this[i] = 29}
   } 
   return this
}

function isDate(dtStr){
	var daysInMonth = DaysArray(12)
	var pos1=dtStr.indexOf(dtCh)
	var pos2=dtStr.indexOf(dtCh,pos1+1)
	var strMonth=dtStr.substring(0,pos1)
	var strDay=dtStr.substring(pos1+1,pos2)
	var strYear=dtStr.substring(pos2+1)
	strYr=strYear
	if (strDay.charAt(0)=="0" && strDay.length>1) strDay=strDay.substring(1)
	if (strMonth.charAt(0)=="0" && strMonth.length>1) strMonth=strMonth.substring(1)
	for (var i = 1; i <= 3; i++) {
		if (strYr.charAt(0)=="0" && strYr.length>1) strYr=strYr.substring(1)
	}
	month=parseInt(strMonth)
	day=parseInt(strDay)
	year=parseInt(strYr)
	if (pos1==-1 || pos2==-1){
		alert("The date format should be : mm/dd/yyyy")
		return false
	}
	if (strMonth.length<1 || month<1 || month>12){
		alert("Please enter a valid month")
		return false
	}
	if (strDay.length<1 || day<1 || day>31 || (month==2 && day>daysInFebruary(year)) || day > daysInMonth[month]){
		alert("Please enter a valid day")
		return false
	}
	if (strYear.length != 4 || year==0 || year<minYear || year>maxYear){
		alert("Please enter a valid 4 digit year between "+minYear+" and "+maxYear)
		return false
	}
	if (dtStr.indexOf(dtCh,pos2+1)!=-1 || isInteger(stripCharsInBag(dtStr, dtCh))==false){
		alert("Please enter a valid date")
		return false
	}
return true
}

function ValidateForm(){
	var dt=document.frmSample.txtDate
	if (isDate(dt.value)==false){
		dt.focus()
		return false
	}
    return true
 }


</script>
<body bgcolor="#99cc99" style="color: #000000">


<table width="700" height="817" border="0" align="center" bgcolor="#ABD6AB" id="main">
  <tr>
    <th height="52" colspan="3" scope="row"><span class="style10">Tourism</span></th>
  </tr>
  <tr>
    <th height="112" colspan="3" scope="row"><img src="../Site_Pics/main_banner.jpg" width="639" height="110" /></th>
  </tr>
  <tr>
    <th width="107" rowspan="5" valign="top" scope="row"><table width="103" border="1" align="center" bordercolor="#ABD6AB" bgcolor="#ADC7BA">
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
    </table>    
    <span class="style11"></span></th>
    <td bgcolor="#ABD6AB" style="height: 16px"><span class="style23">Welcome
        <asp:Label ID="l3" runat="server" >Guest</asp:Label>        

[
<asp:HyperLink ID="lik" NavigateUrl="logoutuser.aspx" runat="server" Text="Logout"></asp:HyperLink>&nbsp;
        &nbsp;
        <asp:HyperLink ID="set1" runat="server" NavigateUrl="usersettings.aspx" Style="position: static"
            Text="Settings" Width="44px"></asp:HyperLink>
        ]</span></td>
    <td rowspan="9" align="center" valign="top" bgcolor="#A3D1A3" style="width: 216px">
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
    <td rowspan="5" valign="top" style="text-align: justify">
    
        <span style="font-family: Verdana"><span class="style26" style="font-size: 11pt; color: darkgreen">     
   <table width="350" border="1" align="center" bgcolor="#ADC7BA">

    <tr>
      <td height="26" colspan="3" bgcolor="#ADC7BA"><center>
          <span style="font-size: 10pt"><b>
              Hotel</b> </span>
        
      </center></td>
    </tr>
    <tr>
      <td colspan="3" style="height: 69px">
      <form name="frmSample" action="processenquiry.aspx" method=get onSubmit="return ValidateForm()">
      <table width="350" height="125" border="0" align="center">
        <tr>
        
        <%
             string hotel = Request.QueryString["hotel"];
             user = Session["user"].ToString();
            try
            {
                
                System.Data.DataTable dt1 = new System.Data.DataTable();
                objdb.OpenConnection();
                dt = objdb.getRecord("select htl_name,htl_location,htl_star,htl_phone,htl_email,htl_mobile,htl_website,htl_description,htl_id from Hotel_Details where htl_id='"+hotel+"' ");
                 foreach (System.Data.DataRow dr in dt.Rows)
                {
                    Response.Write("<td width=169><span style=\"font-size: 10pt\">");
                    Response.Write("Hotel: "+dr[0] + "<br>");
                    Response.Write("Location: "+dr[1] + "<br>");
                    Response.Write("Star: "+dr[2] + "<br>");
                    Response.Write("Phone: "+dr[3] + "<br>");
                    Response.Write("Mobile: "+dr[5] + "<br>");
                    Response.Write("Email: "+dr[4] + "<br>");
                    Response.Write(dr[7] + "</span><br></td>");
                    Response.Write("  <td width=\"104\">");
                    Response.Write("<center> <a href=" + dr[6] + "><img src=\"../Hotel_Pics/" + dr[8] + ".jpg\" /></a></center></td></tr></table></td></tr>");
                     Response.Write("<tr><td height=\"30\" colspan=\"3\"><center><span style=\"font-size: 10pt\"><b>Package</b></span></center></td></tr>");
                     dt1 = objdb.getRecord("select pak_days,pak_nights,pak_no_ppl,pak_rate,pak_description,pak_id from Hotel_Package where htl_id='" + dr[8] + "'");
                    
                    
                    foreach (System.Data.DataRow dr1 in dt1.Rows)
                    {
                        Response.Write(" <tr><td ><span style=\"font-size: 10pt\">");
                        Response.Write("Days: " + dr1[0] + "<br>");
                        Response.Write("Nights: " + dr1[1] + "<br>");
                        Response.Write("No of ppl: " + dr1[2] + "<br>");
                        Response.Write("Rate: " + dr1[3] + "<br>");
                        Response.Write(dr1[4] + "<br></span></td>");
                        Response.Write("<td colspan=\"2\">");
                        string str = dr1[5].ToString();
                        %>
                        <input type=CheckBox id="<%=str%>" name="<%=str%>" Style="position: static" />
                        <%
                        Response.Write("</td></tr>");
                    }
                     %>
              <tr>
      <td colspan="3" style="height: 77px">
          <center>
              <span style="font-size: 10pt">Enter Date:</span>
              <input type="hidden" name="hotel" value="<%=hotel %>" />
              <input type="hidden" name="user" value="<%=user %>" />
              <input type="text" name="txtDate" maxlength="10"><center>
              &nbsp;</center> </td>
    </tr>
    <tr>
      <td colspan="2" style="height: 40px">&nbsp;
     <input type="submit" name="Submit" value="Submit" style="position: static; border-right: green 1px solid; border-top: green 1px solid; border-left: green 1px solid; border-bottom: green 1px solid;" BorderColor="Green" id="Submit1" language="javascript" onclick="return Submit1_onclick()" /></td>
     </form>
      <td style="width: 106px; height: 40px;">&nbsp;
     <%-- <asp:Button ID="btnBack" runat="server" Text="Back" style="position: static" BorderColor="Green" BorderStyle="Solid" BorderWidth="1px" OnClick="btnBack_Click" />--%>
     </td>
    </tr>
         <%        }

 
                    objdb.close();
                }
                
            catch (Exception)
            {
                Response.Write(objdb.Error);
            }
           %> 
            </table>
           
     </td></tr>
</table> 
</body>
</html>

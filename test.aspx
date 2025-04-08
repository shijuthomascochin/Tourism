<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="iso-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<body>
<p>&nbsp;</p>
<form action="" method="post" name="form1" id="form1" runat="server">
  <table width="840" border="0" align="center">

    <tr>
      <td height="94" colspan="2"></td>
      <td width="10">&nbsp;</td>
    </tr>
    
    <tr>
      <td rowspan="2" style="width: 59px">&lt;pak1&gt;</td>
      <td width="129" rowspan="2"><asp:CheckBox ID="cb1" runat="server" /></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="2" style="width: 59px">&lt;pak2&gt;</td>
      <td rowspan="2"><asp:CheckBox ID="cb3" runat="server" /></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td rowspan="2" style="width: 59px">&lt;pak3&gt;</td>
      <td rowspan="2"><asp:CheckBox ID="cb2" runat="server" /></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2" style="height: 77px">
          Select date:
          <asp:Calendar DayNameFormat="Shortest" FirstDayOfWeek="Sunday" ID="cal1" runat="server" BackColor="White" BorderColor="#004040" BorderWidth="1px" CellPadding="1" Font-Names="Verdana" Font-Size="8pt" ForeColor="#004000" Height="22px" Width="250px">
              <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
              <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
              <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
              <WeekendDayStyle BackColor="#CCCCFF" />
              <OtherMonthDayStyle ForeColor="#999999" />
              <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
              <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
              <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                  Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
          </asp:Calendar> </td>
      <td style="height: 77px">&nbsp;</td>
    </tr>
    <tr>
      <td height="38" colspan="2">&nbsp;<asp:Button ID="btnEnq" runat="server" Text="Submit" style="position: static" /></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>
</body>
</html>

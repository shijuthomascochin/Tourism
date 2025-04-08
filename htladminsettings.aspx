<%@ Page Language="C#" AutoEventWireup="true" CodeFile="htladminsettings.aspx.cs" Inherits="WebSite_htladminsettings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title> Hotel Admin Settings</title>

</head>
<body bgcolor="#99cc99" style="text-align: center">
<form runat=server>
        <span style="font-size: 24pt; font-family: Verdana"><strong>Tourism - Hotel Admid<span style="font-size: 14pt"><br />
            </span></strong></span>
         <div style="z-index: 102; left: 13px; width: 117px; position: absolute; top: 105px;
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
                            </span>
                            </span>
            </div>
    <br />
    <strong><span style="font-size: 14pt; font-family: Verdana">Hotel Admin Settings</span></strong>
    <asp:SqlDataSource ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
        SelectCommand="SELECT [adm_name], [adm_passwd], [adm_address], [adm_pincode], [adm_phone], [adm_mobile], [adm_id] FROM [Admin_Hotel] WHERE ([adm_id] = @adm_id)">
        <SelectParameters>
            <asp:SessionParameter Name="adm_id" SessionField="hoteladmin" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SDS1"
        Font-Names="Verdana" Font-Size="10pt" Style="position: relative; z-index: 103; left: 144px; top: 26px;" Width="546px" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            <asp:BoundField DataField="adm_id" HeaderText="Admin ID" SortExpression="adm_id" />
            <asp:BoundField DataField="adm_name" HeaderText="Name" SortExpression="adm_name" />
            <asp:BoundField DataField="adm_passwd" HeaderText="Password" SortExpression="adm_passwd" />
            <asp:BoundField DataField="adm_address" HeaderText="Address" SortExpression="adm_address" />
            <asp:BoundField DataField="adm_pincode" HeaderText="Pincode" SortExpression="adm_pincode" />
            <asp:BoundField DataField="adm_phone" HeaderText="Phone No" SortExpression="adm_phone" />
            <asp:BoundField DataField="adm_mobile" HeaderText="Mobile" SortExpression="adm_mobile" />
        </Columns>
    </asp:GridView>
    &nbsp; &nbsp;&nbsp;<br />
    &nbsp;<br />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Verdana"
        Font-Size="10pt" OnClick="LinkButton1_Click" Style="position: static">Back</asp:LinkButton>
                  
     </form>          
</body>
</html>



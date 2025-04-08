<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hoteladmin.aspx.cs" Inherits="WebSite_hoteladmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Hotel Administration</title>
</head>
<body bgcolor="#99cc99" style="text-align: center">
  <form id="Form1" runat=server>
        <span style="font-size: 24pt; font-family: Verdana"><strong>Tourism - Hotel Admin<br />
            <br />
            <span style="font-size: 14pt">Hotels</span><asp:SqlDataSource
            ID="SDS1" runat="server" ConnectionString="Data Source=LAPTOP;Initial Catalog=Tourism;Integrated Security=True"
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [htl_id], [htl_name], [htl_location], [htl_district], [htl_star], [htl_phone], [htl_mobile], [htl_fax], [htl_website], [htl_email], [htl_description] FROM [Hotel_Details] WHERE ([adm_id] = @adm_id)">
            <SelectParameters>
                <asp:SessionParameter Name="adm_id" SessionField="hoteladmin" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;<br />
            <br />
        </strong>
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
 
    <div style="z-index: 103; left: 135px; width: 87px; position: absolute; top: 183px;
        height: 181px; background-color: darkseagreen">
        <br />
        
        <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 100; left: 16px;
            position: absolute; top: 14px; font-size: 10pt; font-family: Verdana;" ForeColor="DarkOliveGreen" OnClick="LinkButton1_Click">View</asp:LinkButton>
        <span style="color: green"></span>
        <asp:LinkButton ID="LinkButton2" runat="server" Style="z-index: 101; left: 16px;
            position: absolute; top: 45px" Font-Names="Verdana" Font-Size="10pt" ForeColor="DarkOliveGreen" OnClick="LinkButton2_Click">Add</asp:LinkButton>
        <span style="color: green"></span>
        <asp:LinkButton ID="LinkButton3" runat="server" Style="z-index: 102; left: 16px;
            position: absolute; top: 76px" Font-Names="Verdana" Font-Size="10pt" ForeColor="DarkOliveGreen" OnClick="LinkButton3_Click">Edit</asp:LinkButton>
        <span style="color: green"></span>
        <asp:LinkButton ID="LinkButton4" runat="server" Style="z-index: 103; left: 16px;
            position: absolute; top: 107px" Font-Names="Verdana" Font-Size="10pt" ForeColor="DarkOliveGreen" OnClick="LinkButton4_Click">Delete</asp:LinkButton>
            <asp:LinkButton ID="LinkButton5" runat="server" Font-Names="Verdana" Font-Size="10pt"
                ForeColor="DarkOliveGreen" OnClick="LinkButton5_Click" Style="z-index: 105; left: 16px;
                position: absolute; top: 141px">Cancel</asp:LinkButton>
            
    </div>
    <asp:GridView ID="GV1" runat="server" AutoGenerateColumns="False" DataSourceID="SDS1"
        Height="15px" Style="z-index: 100; left: 232px; position: absolute; top: 96px; background-color: darkseagreen;"
        Width="594px" AllowPaging="True" AllowSorting="True" Font-Names="Verdana" Font-Size="10pt">
        <Columns>
            <asp:BoundField DataField="htl_id" HeaderText="Hotel Id" SortExpression="htl_id" />
            <asp:BoundField DataField="htl_name" HeaderText="Hotel Name" SortExpression="htl_name" />
            <asp:BoundField DataField="htl_location" HeaderText="Location" SortExpression="htl_location" />
            <asp:BoundField DataField="htl_district" HeaderText="District" SortExpression="htl_district" />
            <asp:BoundField DataField="htl_star" HeaderText="Star" SortExpression="htl_star" />
            <asp:BoundField DataField="htl_phone" HeaderText="Phone" SortExpression="htl_phone" />
            <asp:BoundField DataField="htl_mobile" HeaderText="Mobile" SortExpression="htl_mobile" />
            <asp:BoundField DataField="htl_fax" HeaderText="Fax" SortExpression="htl_fax" />
            <asp:BoundField DataField="htl_website" HeaderText="Website" SortExpression="htl_website" />
            <asp:BoundField DataField="htl_email" HeaderText="Email" SortExpression="htl_email" />
            <asp:BoundField DataField="htl_description" HeaderText="Description" SortExpression="htl_description" >
                <HeaderStyle BackColor="Transparent" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
            &nbsp;
            <asp:GridView ID="GV2" runat="server" AutoGenerateColumns="False" DataSourceID="SDS1"
        Height="1px" Style="z-index: 101; left: 231px; position: absolute; top: 94px; background-color: darkseagreen; border-right-style: solid; border-left-style: solid; border-bottom-style: solid;"
        Width="594px" AllowPaging="True" AllowSorting="True" Font-Names="Verdana" Font-Size="10pt" OnSelectedIndexChanged="GV2_SelectedIndexChanged" OnRowDeleting="GV2_RowDeleting">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" >
                    <ItemStyle BorderStyle="Solid" BorderWidth="1px" />
                </asp:CommandField>
                <asp:BoundField DataField="htl_id" HeaderText="Hotel Id" SortExpression="htl_id" />
                <asp:BoundField DataField="htl_name" HeaderText="Hotel Name" SortExpression="htl_name" />
                <asp:BoundField DataField="htl_location" HeaderText="Location" SortExpression="htl_location" />
                <asp:BoundField DataField="htl_district" HeaderText="District" SortExpression="htl_district" />
                <asp:BoundField DataField="htl_star" HeaderText="Star" SortExpression="htl_star" />
                <asp:BoundField DataField="htl_phone" HeaderText="Phone" SortExpression="htl_phone" />
                <asp:BoundField DataField="htl_mobile" HeaderText="Mobile" SortExpression="htl_mobile" />
                <asp:BoundField DataField="htl_fax" HeaderText="Fax" SortExpression="htl_fax" />
                <asp:BoundField DataField="htl_website" HeaderText="Website" SortExpression="htl_website" />
                <asp:BoundField DataField="htl_email" HeaderText="Email" SortExpression="htl_email" />
                <asp:BoundField DataField="htl_description" HeaderText="Description" SortExpression="htl_description" >
                    <HeaderStyle BackColor="Transparent" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
            &nbsp;
    </form>
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="htlenquiryadmin.aspx.cs" Inherits="WebSite_enquiries" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title> Enquiry</title>
</head>
<body bgcolor="#99cc99" style="text-align: center">
<form runat=server>
        <span style="font-size: 24pt; font-family: Verdana"><strong>Tourism - Hotel Admid&nbsp;<br />
            <span style="font-size: 14pt">
            </span></strong></span>
                            
         
       
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
                            </span>
                            </span>
            </div>
    <strong><span style="font-size: 14pt; font-family: Verdana">Enquiry Admin<asp:SqlDataSource ID="SDS3" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
                SelectCommand="SELECT [usr_id], [enq_date], [confirm_date] FROM [User_Enquiry] WHERE ([pak_id] = @pak_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView2" Name="pak_id" PropertyName="SelectedValue"
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        <asp:SqlDataSource ID="SDS4" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
            SelectCommand="SELECT [usr_name], [usr_phone], [usr_mobile], [usr_email] FROM [User_Tab] WHERE ([usr_id] = @usr_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView3" Name="usr_id" PropertyName="SelectedValue"
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
            SelectCommand="SELECT [htl_id], [htl_name] FROM [Hotel_Details] WHERE ([adm_id] = @adm_id)">
            <SelectParameters>
                <asp:SessionParameter Name="adm_id" SessionField="hoteladmin" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SDS2" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
            SelectCommand="SELECT DISTINCT [pak_id] FROM [User_Enquiry] WHERE ([htl_id] = @htl_id)" >
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="htl_id" PropertyName="SelectedValue"
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="htl_id"
            DataSourceID="SDS1" Font-Bold="False" Font-Names="Verdana" Font-Size="Medium" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
            Style="position: static" Width="470px" AllowPaging="True" AllowSorting="True" BackColor="DarkSeaGreen" BorderWidth="1px" Caption="Select Hotel" CaptionAlign="Top">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="htl_id" HeaderText="Hotel ID" ReadOnly="True" SortExpression="htl_id" />
                <asp:BoundField DataField="htl_name" HeaderText="Hotel Name" SortExpression="htl_name" />
            </Columns>
            <EditRowStyle Height="20px" />
            <FooterStyle Font-Size="Smaller" />
            <RowStyle Font-Size="Small" />
            <PagerStyle Font-Size="Small" />
            <HeaderStyle Font-Size="Small" />
            <SelectedRowStyle BackColor="Lime" />
        </asp:GridView>
            &nbsp;&nbsp;</center>
       <center> <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
            DataSourceID="SDS2" Font-Bold="False" Font-Names="Verdana" Font-Size="Medium" Style="position: static" Width="470px" DataKeyNames="pak_id" DataMember="DefaultView" AllowPaging="True" AllowSorting="True" BackColor="DarkSeaGreen" BorderWidth="1px" Caption="Select Package">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="pak_id" HeaderText="Pack ID" SortExpression="pak_id" />
            </Columns>
           <RowStyle Font-Size="Small" />
           <PagerStyle Font-Size="Small" />
           <HeaderStyle Font-Size="Small" />
           <SelectedRowStyle BackColor="Lime" />
        </asp:GridView>
           &nbsp;&nbsp;</center>
        <center>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SDS3"
                Font-Bold="False" Font-Names="Verdana" Font-Size="Medium" Style="position: static" AllowPaging="True" AllowSorting="True" DataKeyNames="usr_id" Width="470px" BackColor="DarkSeaGreen" BorderWidth="1px" Caption="Select or Delete Enquiry" CaptionAlign="Top" OnRowDeleting="GridView3_RowDeleting">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="usr_id" HeaderText="User ID" SortExpression="usr_id" />
                    <asp:BoundField DataField="enq_date" HeaderText="Enquiry Date" SortExpression="enq_date" />
                    <asp:BoundField DataField="confirm_date" HeaderText="Confirm Date" SortExpression="confirm_date" />
                </Columns>
                <AlternatingRowStyle BackColor="DarkSeaGreen" />
                <RowStyle Font-Size="Small" />
                <PagerStyle Font-Size="Small" />
                <HeaderStyle Font-Size="Small" />
                <SelectedRowStyle BackColor="Lime" />
            </asp:GridView>
            &nbsp;&nbsp;</center>
        <center>
            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SDS4" Font-Bold="False" Font-Names="Verdana"
                Font-Size="Medium" Style="position: static" Width="470px" BackColor="DarkSeaGreen" BorderWidth="1px" Caption="Person Details">
                <Columns>
                    <asp:BoundField DataField="usr_name" HeaderText="Name" SortExpression="usr_name" />
                    <asp:BoundField DataField="usr_phone" HeaderText="Phone" SortExpression="usr_phone" />
                    <asp:BoundField DataField="usr_mobile" HeaderText="Mobile" SortExpression="usr_mobile" />
                    <asp:BoundField DataField="usr_email" HeaderText="Email" SortExpression="usr_email" />
                </Columns>
                <RowStyle Font-Size="Small" />
                <PagerStyle Font-Size="Small" />
                <HeaderStyle Font-Size="Small" />
                <SelectedRowStyle BackColor="Lime" />
            </asp:GridView>
        </center>
        <center>
        </center>
        &nbsp;&nbsp;<br />
        &nbsp;
    </strong>
 </form>            
</body>
</html>




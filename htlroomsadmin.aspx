<%@ Page Language="C#" AutoEventWireup="true" CodeFile="htlroomsadmin.aspx.cs" Inherits="WebSite_viewrooms" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#99cc99" style="text-align: center">
<form runat=server>
        <span style="font-size: 24pt; font-family: Verdana"><strong>Tourism - Hotel Admin<asp:SqlDataSource
            ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
            SelectCommand="SELECT * FROM [Hotel_Room_Details] WHERE ([htl_id] = @htl_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DDL1" DefaultValue="htl1" Name="htl_id" PropertyName="SelectedValue"
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SDS1" Font-Names="Verdana" Font-Size="9pt"
                ForeColor="DarkGreen" Style="z-index: 106; left: 253px; position: absolute; top: 184px"
                Visible="False" Width="365px" Font-Bold="False" OnRowDeleting="GridView3_RowDeleting">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    <asp:BoundField DataField="room_id" HeaderText="room_id" SortExpression="room_id" />
                    <asp:BoundField DataField="htl_id" HeaderText="htl_id" SortExpression="htl_id" />
                    <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                    <asp:BoundField DataField="room_rate" HeaderText="room_rate" SortExpression="room_rate" />
                    <asp:BoundField DataField="room_description" HeaderText="room_description" SortExpression="room_description" />
                </Columns>
            </asp:GridView>
            <br />
        </strong>
        <DIV 
style="Z-INDEX: 104; LEFT: 136px; WIDTH: 82px; POSITION: absolute; TOP: 215px; HEIGHT: 181px; BACKGROUND-COLOR: darkseagreen"><BR /><asp:LinkButton style="FONT-SIZE: 10pt; Z-INDEX: 100; LEFT: 17px; FONT-FAMILY: Verdana; POSITION: absolute; TOP: 14px" id="LinkButton1" onclick="LinkButton1_Click" runat="server" ForeColor="DarkOliveGreen">View</asp:LinkButton>  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <SPAN style="COLOR: green"></SPAN><asp:LinkButton style="Z-INDEX: 102; LEFT: 16px; POSITION: absolute; TOP: 45px" id="LinkButton2" onclick="LinkButton2_Click" runat="server" ForeColor="DarkOliveGreen" Font-Size="10pt" Font-Names="Verdana">Add</asp:LinkButton> 
<SPAN style="COLOR: green"></SPAN><asp:LinkButton style="Z-INDEX: 103; LEFT: 16px; POSITION: absolute; TOP: 76px" id="LinkButton3" onclick="LinkButton3_Click" runat="server" ForeColor="DarkOliveGreen" Font-Size="10pt" Font-Names="Verdana">Edit</asp:LinkButton> 
<SPAN style="COLOR: green"></SPAN><asp:LinkButton style="Z-INDEX: 104; LEFT: 16px; POSITION: absolute; TOP: 107px" id="LinkButton4" onclick="LinkButton4_Click" runat="server" ForeColor="DarkOliveGreen" Font-Size="10pt" Font-Names="Verdana">Delete</asp:LinkButton> 
<asp:LinkButton style="Z-INDEX: 105; LEFT: 16px; POSITION: absolute; TOP: 141px" id="LinkButton5" onclick="LinkButton5_Click" runat="server" ForeColor="DarkOliveGreen" Font-Size="10pt" Font-Names="Verdana">Cancel</asp:LinkButton> 
</DIV>
            <div style="z-index: 103; left: 13px; width: 117px; position: absolute; top: 106px;
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
            <br />
            <div style="z-index: 105; left: 315px; width: 151px; position: absolute; top: 119px;
                height: 34px; font-size: 10pt;">
                Select a Hotel ID<br />
                <br />
                <asp:DropDownList ID="DDL1" runat="server" Style="position: static;" AutoPostBack="True" OnSelectedIndexChanged="DDL1_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
            &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SDS1"
                Font-Names="Verdana" Font-Size="9pt" ForeColor="DarkGreen" Style="z-index: 101;
                left: 253px; position: absolute; top: 185px" Width="365px" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="room_id" HeaderText="room_id" SortExpression="room_id" />
                    <asp:BoundField DataField="htl_id" HeaderText="htl_id" SortExpression="htl_id" />
                    <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                    <asp:BoundField DataField="room_rate" HeaderText="room_rate" SortExpression="room_rate" />
                    <asp:BoundField DataField="room_description" HeaderText="room_description" SortExpression="room_description" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateColumns="False" DataSourceID="SDS1" Font-Names="Verdana" Font-Size="9pt"
                ForeColor="DarkGreen" Style="z-index: 102; left: 253px; position: absolute; top: 184px"
                Visible="False" Width="365px" OnRowUpdating="GridView2_RowUpdating">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:BoundField DataField="room_id" HeaderText="room_id" SortExpression="room_id" />
                    <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                    <asp:BoundField DataField="room_rate" HeaderText="room_rate" SortExpression="room_rate" />
                    <asp:BoundField DataField="room_description" HeaderText="room_description" SortExpression="room_description" />
                </Columns>
            </asp:GridView>
           
        </span>
        </form>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="htlpackageadmin.aspx.cs" Inherits="WebSite_packageadmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Pakages</title>
</head>
<body bgcolor="#99cc99" style="text-align: center">
        <span style="font-size: 24pt; font-family: Verdana"><strong><span style="font-size: 20pt">
            Tourism - Package Admin &nbsp;&nbsp;<br />
        </span><span style="font-size: 14pt">
            <br />
            Packages<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
                SelectCommand="SELECT [pak_id], [htl_id], [pak_nights], [pak_days], [pak_no_ppl], [pak_rate], [pak_description] FROM [Hotel_Package] WHERE ([adm_id] = @adm_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="adm_id" SessionField="hoteladmin" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SDS1" runat="server" ConnectionString="<%$ ConnectionStrings:TourismConnectionString %>"
                SelectCommand="SELECT [pak_id], [htl_id], [pak_days], [pak_nights], [pak_no_ppl], [pak_rate], [pak_description] FROM [Hotel_Package] WHERE ([adm_id] = @adm_id)" OnDeleting="SDS1_Deleting">
                <SelectParameters>
                    <asp:SessionParameter Name="adm_id" SessionField="hoteladmin" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </span>
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
                            </span>
       <form id="Form1" runat=server>
    <div style="z-index: 103; left: 135px; width: 82px; position: absolute; top: 179px;
        height: 181px; background-color: darkseagreen">
        <br />
        
        <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 100; left: 17px;
            position: absolute; top: 14px; font-size: 10pt; font-family: Verdana;" ForeColor="DarkOliveGreen" OnClick="LinkButton1_Click" >View</asp:LinkButton>&nbsp;
       
        &nbsp; &nbsp;
        <span style="color: green"></span>
        <asp:LinkButton ID="LinkButton2" runat="server" Style="z-index: 102; left: 16px;
            position: absolute; top: 45px" Font-Names="Verdana" Font-Size="10pt" ForeColor="DarkOliveGreen" OnClick="LinkButton2_Click" >Add</asp:LinkButton>
        <span style="color: green"></span>
        <asp:LinkButton ID="LinkButton3" runat="server" Style="z-index: 103; left: 16px;
            position: absolute; top: 76px" Font-Names="Verdana" Font-Size="10pt" ForeColor="DarkOliveGreen" OnClick="LinkButton3_Click" >Edit</asp:LinkButton>
        <span style="color: green"></span>
        <asp:LinkButton ID="LinkButton4" runat="server" Style="z-index: 104; left: 16px;
            position: absolute; top: 107px" Font-Names="Verdana" Font-Size="10pt" ForeColor="DarkOliveGreen" OnClick="LinkButton4_Click" >Delete</asp:LinkButton>
            <asp:LinkButton ID="LinkButton5" runat="server" Font-Names="Verdana" Font-Size="10pt"
                ForeColor="DarkOliveGreen" Style="z-index: 105; left: 16px;
                position: absolute; top: 141px" OnClick="LinkButton5_Click">Cancel</asp:LinkButton>
            
    </div>
     <asp:GridView ID="GV1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
            DataSourceID="SqlDataSource1" Font-Names="Verdana" Font-Size="10pt" Style="z-index: 106;
            left: 237px; position: absolute; top: 101px" Width="497px" DataKeyNames="pak_id" OnSelectedIndexChanged="GV1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="pak_id" HeaderText="Pack Id" ReadOnly="True" SortExpression="pak_id" />
                <asp:BoundField DataField="htl_id" HeaderText="Hotel Id" SortExpression="htl_id" />
                <asp:BoundField DataField="pak_days" HeaderText="Days" SortExpression="pak_days" />
                <asp:BoundField DataField="pak_nights" HeaderText="Nights" SortExpression="pak_nights" />
                <asp:BoundField DataField="pak_no_ppl" HeaderText="No People" SortExpression="pak_no_ppl" />
                <asp:BoundField DataField="pak_rate" HeaderText="Rate" SortExpression="pak_rate" />
                <asp:BoundField DataField="pak_description" HeaderText="Description" SortExpression="pak_description" />
            </Columns>
        </asp:GridView>
            &nbsp;
             <asp:GridView ID="GV2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                DataSourceID="SDS1" Font-Names="Verdana" Font-Size="10pt" Style="z-index: 105;
                left: 236px; position: absolute; top: 101px" Height="1px" OnRowDeleting="GV2_RowDeleting" Width="497px" OnSelectedIndexChanged="GV2_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    <asp:BoundField DataField="pak_id" HeaderText="Pack Id" ReadOnly="True" SortExpression="pak_id" />
                    <asp:BoundField DataField="htl_id" HeaderText="Hotel Id" SortExpression="htl_id" />
                    <asp:BoundField DataField="pak_days" HeaderText="Days" SortExpression="pak_days" />
                    <asp:BoundField DataField="pak_nights" HeaderText="Nights" SortExpression="pak_nights" />
                    <asp:BoundField DataField="pak_no_ppl" HeaderText="No People" SortExpression="pak_no_ppl" />
                    <asp:BoundField DataField="pak_rate" HeaderText="Rate" SortExpression="pak_rate" />
                    <asp:BoundField DataField="pak_description" HeaderText="Description" SortExpression="pak_description" />
                </Columns>
            </asp:GridView>
    </form>
    &nbsp;
           
</body>
</html>



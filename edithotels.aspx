<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edithotels.aspx.cs" Inherits="WebSite_edithotels" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title> Add hotels</title>
<script language="javascript" type="text/javascript">
<!--


// -->
</script>
</head>
<body bgcolor="#99cc99" style="text-align: center">
        <span style="font-size: 24pt; font-family: Verdana"><strong>Tourism - Hotel Admid<span style="font-size: 14pt"><br />
            Edit Hotels<br /> </span></strong></span>
                  <div align="left" style="z-index: 100; left: 159px; width: 403px; position: absolute;
                                top: 82px; height: 571px; background-color: darkseagreen; text-decoration: none" id="DIV1">
                                <form id="Form1" runat=server>
                                <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Style="z-index: 100; left: 41px; position: absolute; top: 23px" Text="Hotel ID"></asp:Label>
                                    &nbsp; &nbsp;
                                <asp:Label ID="Label2" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Height="3px" Style="z-index: 101; left: 41px; position: absolute; top: 62px"
                                    Text="Hotel Name"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Style="z-index: 102; left: 41px; position: absolute; top: 101px" Text="Location"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Style="z-index: 103; left: 41px; position: absolute; top: 140px" Text="District"></asp:Label>
                                <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Style="z-index: 104; left: 41px; position: absolute; top: 179px" Text="Star"></asp:Label>
                                <asp:Label ID="Label6" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Style="z-index: 105; left: 41px; position: absolute; top: 257px" Text="Mobile"></asp:Label>
                                <asp:Label ID="Label7" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Style="z-index: 106; left: 41px; position: absolute; top: 218px" Text="Phone"></asp:Label>
                                <asp:Label ID="Label8" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Style="z-index: 107; left: 41px; position: absolute; top: 296px" Text="Fax"></asp:Label>
                                <asp:Label ID="Label9" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Style="z-index: 108; left: 41px; position: absolute; top: 374px" Text="Email"></asp:Label>
                                <asp:Label ID="Label10" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Style="z-index: 109; left: 41px; position: absolute; top: 335px" Text="Website"></asp:Label>
                                    &nbsp;
                                    <asp:DropDownList ID="DDL1" runat="server" DataTextField="htl_id"
                                        DataValueField="htl_id" Style="z-index: 110; left: 204px; position: absolute;
                                        top: 18px" Width="180px" AutoPostBack="True" OnSelectedIndexChanged="DDL1_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    &nbsp;
                                <asp:TextBox ID="t5" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                    Font-Size="9pt" Font-Underline="False" Style="z-index: 111; left: 204px; position: absolute;
                                    top: 175px" Width="176px" TabIndex="5"></asp:TextBox>
                                <asp:TextBox ID="t8" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                    Font-Size="9pt" Font-Underline="False" Style="z-index: 112; left: 204px; position: absolute;
                                    top: 292px" Width="176px" TabIndex="8"></asp:TextBox>
                                <asp:TextBox ID="t7" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                    Font-Size="9pt" Font-Underline="False" Style="z-index: 113; left: 204px; position: absolute;
                                    top: 253px" Width="176px" TabIndex="7"></asp:TextBox>
                                <asp:TextBox ID="t6" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                    Font-Size="9pt" Font-Underline="False" Style="z-index: 114; left: 204px; position: absolute;
                                    top: 214px" Width="176px" TabIndex="6"></asp:TextBox>
                                <asp:TextBox ID="t4" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                    Font-Size="9pt" Font-Underline="False" Style="z-index: 115; left: 204px; position: absolute;
                                    top: 136px" Width="176px" TabIndex="4"></asp:TextBox>
                                <asp:TextBox ID="t3" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                    Font-Size="9pt" Font-Underline="False" Style="z-index: 116; left: 204px; position: absolute;
                                    top: 97px" Width="176px" TabIndex="3"></asp:TextBox>
                                <asp:TextBox ID="t9" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                    Font-Size="9pt" Font-Underline="False" Style="z-index: 117; left: 204px; position: absolute;
                                    top: 331px" Width="176px" TabIndex="9"></asp:TextBox>
                                <asp:TextBox ID="t10" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana"
                                    Font-Size="9pt" Font-Underline="False" Style="z-index: 118; left: 204px; position: absolute;
                                    top: 370px" Width="176px" TabIndex="10"></asp:TextBox>
                                <asp:TextBox ID="t2" runat="server" BorderStyle="Solid" BorderWidth="1px"
                                    Font-Names="Verdana" Font-Size="9pt" Font-Underline="False" Style="z-index: 119;
                                    left: 204px; position: absolute; top: 58px" Width="176px" TabIndex="2"></asp:TextBox>
                                    &nbsp;
                                <asp:Label ID="Label12" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                    Style="z-index: 120; left: 41px; position: absolute; top: 411px" Text="Description"></asp:Label>
                                    <asp:Label ID="Label11" runat="server" Font-Names="Verdana" Font-Size="10pt" Font-Underline="False"
                                        Style="z-index: 141; left: 41px; position: absolute; top: 454px" Text="Hotel Pic"></asp:Label>
                                    &nbsp;
                                <asp:TextBox ID="t12" runat="server" BorderStyle="Solid" BorderWidth="1px"
                                    Font-Names="Verdana" Font-Size="9pt" Font-Underline="False" Style="z-index: 122;
                                    left: 204px; position: absolute; top: 410px" Width="176px" TabIndex="12"></asp:TextBox>
                                <asp:Button ID="btnEdit" runat="server" BorderWidth="1px" Style="z-index: 123; left: 205px;
                                    position: absolute; top: 491px" Text="Edit" Width="88px"  TabIndex="13" OnClick="btnEdit_Click" />
                                    &nbsp;
                                   
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebSite/hoteladmin.aspx"
                                    Style="z-index: 124; left: 17px; position: absolute; top: 506px">Back</asp:HyperLink>
                                    <asp:Label ID="l1" runat="server" Font-Names="Verdana" Font-Size="8pt" ForeColor="Red"
                                        Style="z-index: 125; left: 120px; position: absolute; top: 524px"
                                        Width="231px"></asp:Label>
                                    &nbsp;
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2"
                          ErrorMessage="*" Style="z-index: 126; left: 386px; position: absolute; top: 61px"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t7"
                          ErrorMessage="*" Style="z-index: 127; left: 385px; position: absolute; top: 255px"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="t9"
                          ErrorMessage="*" Style="z-index: 128; left: 387px; position: absolute; top: 334px"></asp:RequiredFieldValidator>
                                    &nbsp;
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="t12"
                          ErrorMessage="*" Style="z-index: 129; left: 384px; position: absolute; top: 410px"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="t10"
                          ErrorMessage="*" Style="z-index: 130; left: 386px; position: absolute; top: 372px"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="t8"
                          ErrorMessage="*" Style="z-index: 131; left: 385px; position: absolute; top: 295px"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="t6"
                          ErrorMessage="*" Style="z-index: 132; left: 386px; position: absolute; top: 216px"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="t5"
                          ErrorMessage="*" Style="z-index: 133; left: 384px; position: absolute; top: 176px"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="t4"
                          ErrorMessage="*" Style="z-index: 134; left: 383px; position: absolute; top: 135px"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="t3"
                          ErrorMessage="*" Style="z-index: 135; left: 385px; position: absolute; top: 99px"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="t10"
                                        ErrorMessage="*" Style="z-index: 136; left: 384px; position: absolute; top: 371px"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    &nbsp;&nbsp;
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="t6" ErrorMessage="*"
                                        MaximumValue="9" MinimumValue="0" Style="z-index: 137; left: 386px; position: absolute;
                                        top: 214px"></asp:RangeValidator>
                                    &nbsp; &nbsp;
                                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="t7" ErrorMessage="*"
                                        MaximumValue="9" MinimumValue="0" Style="z-index: 138; left: 382px; position: absolute;
                                        top: 254px"></asp:RangeValidator>
                                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="t8" ErrorMessage="*"
                                        MaximumValue="9" MinimumValue="0" Style="z-index: 139; left: 383px; position: absolute;
                                        top: 294px"></asp:RangeValidator>
                                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" BorderColor="#004000"
                                        BorderWidth="1px" ForeColor="Black" Style="z-index: 140; left: 204px; position: absolute;
                                        top: 449px" Width="176px" BorderStyle="Solid" />
                         </form>
                           </div>
                            
         
       
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
                            
</body>
</html>



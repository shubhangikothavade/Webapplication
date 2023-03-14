<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication4.WebForm1" %>

 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            border-style: solid;
            width: 650px;
            height: 600px;
            color: #800000;
            margin-left: 180px;
            background-color: #FFFFCC;
        }
        .auto-style2 {
            width: 163px;
        }
        .auto-style3 {
            margin-left: 7px;
        }
        .auto-style4 {
            margin-left: 5px;
        }
        .auto-style7 {
            margin-left: 4px;
        }
        .auto-style8 {
            margin-left: 6px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            margin-left: 12px;
        }
        .auto-style12 {
            width: 575px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1" style="border-color: #800000">
                <tr>
                    <td class="auto-style2"><strong></td>
                    <td class="auto-style12"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Form</strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; UserId</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Width="250px"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter  the valid no" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Name</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style8" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Age</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style8" Width="250px"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Enter proper age" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Contact</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style4" Width="250px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter valid contact number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Address</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" Width="247px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Saigavhan</asp:ListItem>
                            <asp:ListItem>Chalisgaon</asp:ListItem>
                            <asp:ListItem>Jalgaon</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Nagar</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Country</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" Display="Dynamic" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style8" Width="247px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>Pakistan</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem>Coria</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Itali</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style3" TextMode="Password" Width="250px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Enter valid password" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*&amp;amp;])[A-Za-z\d$@$!%*?&amp;amp;]{8,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; CPassword</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style3" TextMode="Password" Width="250px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Invalid Password" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; uploadfile</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="262px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; EmailId</td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style7" Width="250px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style12">
&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                        &nbsp; <asp:Button ID="Button1" runat="server" Text="Mail" OnClick="Button1_Click" />
                        <asp:Button ID="Button3" runat="server" Text="Print" CssClass="auto-style10" />
                        </strong>
                    </td>
                </tr>
            </table>
        </div>
        <p>
&nbsp;<div class="auto-style9">
            </div>
        </p>
    </form>
</body>
</html>

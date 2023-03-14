<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style29 {
            height: 30px;
            width: 1303px;
        }
        .auto-style30 {
            height: 100px;
            width: 434px;
            margin-left: 405px;
            margin-top: 101px;
        }
        .auto-style37 {
            margin-left: 18px;
        }
        .auto-style38 {
            margin-left: 101px;
        }
        .auto-style40 {
            height: 189px;
        }
        .auto-style44 {
            text-align: center;
        }
        .auto-style45 {
            text-decoration: underline;
        }
        .auto-style46 {
            height: 47px;
            width: 1303px;
        }
        .auto-style47 {
            height: -12px;
        }
        .auto-style48 {
            height: 49px;
            width: 1303px;
        }
        .auto-style49 {
            width: 1303px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
        
        <table class="auto-style30" style="background-color: #C0C0C0; border-color: #00FFFF; border-style: double">
            <tr>
                <td class="auto-style46">
                    <div class="auto-style44">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style45"><strong>&nbsp;Login Form</strong></span>
                    </div>
                    <hr style="font-size: 5px; background-color: #000000" class="auto-style47" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="UserId"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="233px" ></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="233px" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&amp;])[A-Za-z\d$@$!%*?&amp;]{8,}" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style38" OnClick="Button2_Click" Text="Registration" />
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style37"  Text="Login" Width="81px" OnClick="Button1_Click" />
                </td>
            </tr>
            </table>
       
        <br />
       
        <p class="auto-style40">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
       
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="aspnet.calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Select1 {
            height: 0px;
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div draggable="auto">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="Larger" Font-Underline="True" Text="Calculator:"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="X:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="35px" OnTextChanged="TextBox1_TextChanged" Width="165px"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Y:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="35px" OnTextChanged="TextBox2_TextChanged" Width="165px"></asp:TextBox>
        </p>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Operations: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="164px">
            <asp:ListItem>select operation</asp:ListItem>
            <asp:ListItem Value="+">Add</asp:ListItem>
            <asp:ListItem Value="-">Subtract</asp:ListItem>
            <asp:ListItem Value="*">Multiply</asp:ListItem>
            <asp:ListItem Value="/">division</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClientClick="javascript: return validatecalculator();" onClick="Button1_Click" BackColor="#66FFCC" BorderColor="#99CCFF" BorderWidth="2px" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Height="37px" Text="Calculate" Width="84px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Answer:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="138px"></asp:TextBox>
        <br />
        <br />
    </form>
</body>
    <script>
        function validatecalculator() {
            var inputval1 = document.getElementById('TextBox1').value;
            var inputval2 = document.getElementById('TextBox2').value;
            var optrval = document.getElementById('DropDownList1').value;
            if (isNaN(inputval1) || inputval1 == '') {
                alert("Enter a valid number");
                return false;
            }
            if (isNaN(inputval2) || inputval2 == '') {
                alert("Enter a valid number");
                return false;
            }
            if (optrval == '') {
                alert("Enter a valid number");
                return false;
            }
        }
    </script>
</html>

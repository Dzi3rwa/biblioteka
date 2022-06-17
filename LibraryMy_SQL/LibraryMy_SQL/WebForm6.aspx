<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="LibraryMy_SQL.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        h1{
            display:flex;
            justify-content:center;
        }
        .main{
            margin:0 auto;
            display:flex;
            flex-direction:column;
            border: 3px solid black;
            width:400px;
            padding:20px;
            margin-bottom:30px;
        }
        table{
            margin-bottom:20px;
        }
        td{
            display:flex;
            justify-content:center;
        }
        .div{
           width:100px;   
        }
        .b{
            display:flex;
            justify-content:center;
        }
        .mr{
            margin-right:20px;
        }
        .button{
            width: 100px;
            padding:5px 10px;
            border-radius:10px;
            text-decoration:none;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
        <h1>Dodaj nowego użytkownika</h1>
        <div class="main">
            <table>
            <tr>
                <td><div class="div">Login</div><asp:TextBox ID="loginTB" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><div class="div">Password</div><asp:TextBox ID="passwordTB" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
            <div class="b">
                <asp:Button class="button mr" ID="ButtonAdd" runat="server" Text="Add" OnClick="Button1_Click1" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button class="button" ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Back" />
            </div>
            
        </div>
        
        
    </form>
    
</body>
</html>

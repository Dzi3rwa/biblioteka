<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LibraryMy_SQL.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            margin:0;
            font-family:Arial;
            font-weight:bold;
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
        .down{
            margin: 0 auto;
            display:flex;
            justify-content:center;
        }
        .a{
            display:flex;
            justify-content:center;
            margin-bottom:10px;
        }
        td{
            display:flex;
            justify-content:center;
        }
        .a input{
            width:150px;
        }
        .div{
           width:100px;   
        }
        .button{
            width: 100px;
            padding:5px 10px;
            border-radius:10px;
            text-decoration:none;
        }
        h1, .b{
            display:flex;
            justify-content:center;
        }
        .mr{
            margin-right:20px;
        }
        table{
            margin-bottom:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Dodaj nowy element</h1>
        <div class="main">
            <table>
            <tr>
                <td><div class="div">Authors</div><asp:TextBox ID="TextBox2" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><div class="div">Title</div><asp:TextBox ID="TextBox3" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><div class="div">Release_date</div><asp:TextBox ID="TextBox4" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><div class="div">ISBN</div><asp:TextBox ID="TextBox5" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><div class="div">Format</div><asp:TextBox ID="TextBox6" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><div class="div">Pages</div><asp:TextBox ID="TextBox7" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><div class="div">Description</div><asp:TextBox ID="TextBox8" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
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

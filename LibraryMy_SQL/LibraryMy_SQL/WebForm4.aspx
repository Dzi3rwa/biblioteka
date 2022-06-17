<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="LibraryMy_SQL.WebForm4" %>

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
        <h1>Aktualizuj</h1>
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
                <asp:Button class="button mr" ID="ButtonUpdate" runat="server" OnClick="ButtonUpdate_Click" Text="Update" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button class="button" ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Back" />
            </div>
            
        </div>
        
        
    </form>
    
</body>
</html>

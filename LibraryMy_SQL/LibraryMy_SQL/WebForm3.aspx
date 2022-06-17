<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="LibraryMy_SQL.WebForm3" %>

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
            padding-top:50px;
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
        
        .a{
            display:flex;
            justify-content:center;
            margin-bottom:10px;
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
        .q{
            display:flex;
            justify-content:center;
        }
        .down{
            display:flex;
            justify-content:center;
        }
        .down td{
            padding:20px;
        }
        .down th{
            padding:20px;
            font-size:18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
        <table>
            <tr>
                <td class="q"><div class="div">Authors</div><asp:TextBox ID="TextBox2" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="q"><div class="div">Title</div><asp:TextBox ID="TextBox3" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="q"><div class="div">Release_date</div><asp:TextBox ID="TextBox4" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="q"><div class="div">ISBN</div><asp:TextBox ID="TextBox5" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="q"><div class="div">Format</div><asp:TextBox ID="TextBox6" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="q"><div class="div">Pages</div><asp:TextBox ID="TextBox7" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="q"><div class="div">Description</div><asp:TextBox ID="TextBox8" runat="server" style="margin-left: 31px" Width="203px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server"></asp:Label>
            <div class="b">
                <asp:Button class="button mr" ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Back" />
            <asp:Button class="button" ID="ButtonSearch" runat="server" OnClick="ButtonSearch_Click" Text="Search" />
            </div>
            
        </div>
        <div class="down">
             <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        </div>
       
    </form>
</body>
</html>

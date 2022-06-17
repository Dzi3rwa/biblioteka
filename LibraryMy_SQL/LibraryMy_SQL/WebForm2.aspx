<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="LibraryMy_SQL.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body{
            margin:0;
            padding:50px;
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
        .a input{
            width:150px;
        }
        .span{
           width: 100px;   
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
    <form id="form1" runat="server">
        <div class="main">
            <div class="a"><span class="span">Server</span><asp:TextBox ID="serverTB" runat="server"></asp:TextBox></div>
            <div class="a"><span class="span">Database</span><asp:TextBox ID="databaseTB" runat="server"></asp:TextBox></div>
            <div class="a"><span class="span">User</span><asp:TextBox ID="userTB" runat="server"></asp:TextBox></div>
        <p class="down">
        <asp:Button class="button" ID="Button2" runat="server" OnClick="Button2_Click" Text="Connect" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
            </div>
    </form>
</body>
</html>

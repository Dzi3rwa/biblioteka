<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="LibraryMy_SQL.View" enableEventValidation="false" %>

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
        .auto-style1 {
            margin: 0 auto;
            display:flex;
            justify-content:center;
        }
        .grid{
            margin:0 auto;
            display:flex;
            justify-content:center;
            width:800px;
            padding:20px;
            margin-bottom:30px;
        }       
        .grid td{
            padding:15px;
            text-align:center;
        }
        .grid th{
            font-size:25px;
            padding:20px;
            text-align:center;
        }
        .button{
            width:100px;
            padding:10px 20px;
            border-radius:10px;
            text-decoration:none;
        }
        .m{
            display:flex;
            justify-content:center;
        }
        .mr{
            margin-right:20px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <div class="grid">
            <asp:GridView ID="GridView1" runat="server" Width="209px" OnRowCommand="GridView1_RowCommand">
                <Columns>              
                    <asp:TemplateField>
                         <ItemTemplate>
                            <asp:Button runat="server" ID="ButtonDelete" Text="Delete" CommandArgument="<%# Container.DataItemIndex %>" OnClick="ButtonDelete_Click" ></asp:Button>    
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                         <ItemTemplate>
                            <asp:Button runat="server" ID="ButtonUpdate" Text="Update" CommandArgument="<%# Container.DataItemIndex %>" OnClick="ButtonUpdate_Click" ></asp:Button>    
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
        </asp:GridView>
        </div>
        <div class="m">
            <asp:Button class="button mr" ID="ButtonSearch" runat="server" OnClick="ButtonSearch_Click"  Text="Search" />
            <asp:Button class="button" ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add" />
        </div>
        
            
    </form>
</body>
</html>

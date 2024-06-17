<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <input id="Hidden1" type="hidden" />
        <input id="Hidden2" type="hidden" />
        <div>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
        <h2>
            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Label"></asp:Label>
        </h2>
        <p>
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.universal-music.co.jp/aegroup/">[HyperLink1]</asp:HyperLink>
        </p>
        <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>

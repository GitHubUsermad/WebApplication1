<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nyuryokuseigenn.aspx.cs" Inherits="WebApplication1.WebForm6_10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="①何か入力してください" ControlToValidate="TextBox1">何か入力してください</asp:RequiredFieldValidator>--%>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
        </div>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="②120までの整数を入力してください" MaximumValue="120" MinimumValue="1" Type="Integer">1～120までの整数で入力してください</asp:RangeValidator>--%>
        <p>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-bottom: 1px" Width="208px"></asp:TextBox>
            <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox3" ErrorMessage="③int型の異なる値を入力してください" Operator="NotEqual" Type="Integer">同じ値を入力しないでください</asp:CompareValidator>--%>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox3" ErrorMessage="同じではありません"></asp:CompareValidator>
        </p>
        <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="④郵便番号を正しく入力してください" ValidationExpression="\d{3}(-(\d{4}|\d{2}))?">郵便番号（-あり）で入力してください</asp:RegularExpressionValidator>--%>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="RangeValidator">文字列型で入力してください</asp:RangeValidator>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </p>
       <%-- <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" EnableTheming="True" />--%>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ControlToValidate="TextBox6" OnServerValidate="CustomValidator1_ServerValidate" ValidateEmptyText="True">値を入力してください</asp:CustomValidator>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" ProviderName="<%$ ConnectionStrings:masterConnectionString.ProviderName %>" SelectCommand="SELECT [CateId], [Name] FROM [Category]"></asp:SqlDataSource>
        <asp:Image ID="Image1" runat="server" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KensyuConnectionString %>" SelectCommand="SELECT [EmpId], [Sei], [Mei], [SeiKana], [MeiKana], [Birthday], [Prefecture], [Address], [Salary], [DeptId], [RetirementDate], [HireDate] FROM [Employee]" DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Employee] ([EmpId], [Sei], [Mei], [SeiKana], [MeiKana], [Birthday], [Prefecture], [Address], [Salary], [DeptId], [RetirementDate], [HireDate]) VALUES (@EmpId, @Sei, @Mei, @SeiKana, @MeiKana, @Birthday, @Prefecture, @Address, @Salary, @DeptId, @RetirementDate, @HireDate)" UpdateCommand="UPDATE [Employee] SET [Sei] = @Sei, [Mei] = @Mei, [SeiKana] = @SeiKana, [MeiKana] = @MeiKana, [Birthday] = @Birthday, [Prefecture] = @Prefecture, [Address] = @Address, [Salary] = @Salary, [DeptId] = @DeptId, [RetirementDate] = @RetirementDate, [HireDate] = @HireDate WHERE [EmpId] = @EmpId">
            <DeleteParameters>
                <asp:Parameter Name="EmpId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpId" Type="String" />
                <asp:Parameter Name="Sei" Type="String" />
                <asp:Parameter Name="Mei" Type="String" />
                <asp:Parameter Name="SeiKana" Type="String" />
                <asp:Parameter Name="MeiKana" Type="String" />
                <asp:Parameter DbType="Date" Name="Birthday" />
                <asp:Parameter Name="Prefecture" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Salary" Type="Decimal" />
                <asp:Parameter Name="DeptId" Type="Int32" />
                <asp:Parameter DbType="Date" Name="RetirementDate" />
                <asp:Parameter DbType="Date" Name="HireDate" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sei" Type="String" />
                <asp:Parameter Name="Mei" Type="String" />
                <asp:Parameter Name="SeiKana" Type="String" />
                <asp:Parameter Name="MeiKana" Type="String" />
                <asp:Parameter DbType="Date" Name="Birthday" />
                <asp:Parameter Name="Prefecture" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Salary" Type="Decimal" />
                <asp:Parameter Name="DeptId" Type="Int32" />
                <asp:Parameter DbType="Date" Name="RetirementDate" />
                <asp:Parameter DbType="Date" Name="HireDate" />
                <asp:Parameter Name="EmpId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="EmpId" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
                <asp:BoundField DataField="Sei" HeaderText="Sei" SortExpression="Sei" />
                <asp:BoundField DataField="Mei" HeaderText="Mei" SortExpression="Mei" />
                <asp:BoundField DataField="SeiKana" HeaderText="SeiKana" SortExpression="SeiKana" />
                <asp:BoundField DataField="MeiKana" HeaderText="MeiKana" SortExpression="MeiKana" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:BoundField DataField="Prefecture" HeaderText="Prefecture" SortExpression="Prefecture" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="DeptId" HeaderText="DeptId" SortExpression="DeptId" />
                <asp:BoundField DataField="RetirementDate" HeaderText="RetirementDate" SortExpression="RetirementDate" />
                <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

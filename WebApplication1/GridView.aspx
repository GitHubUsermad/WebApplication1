<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KensyuConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Employee] ([EmpId], [Mei], [Sei], [SeiKana], [MeiKana], [Birthday], [Prefecture], [Salary], [Address], [RetirementDate], [HireDate], [DeptId]) VALUES (@EmpId, @Mei, @Sei, @SeiKana, @MeiKana, @Birthday, @Prefecture, @Salary, @Address, @RetirementDate, @HireDate, @DeptId)" SelectCommand="SELECT [EmpId], [Mei], [Sei], [SeiKana], [MeiKana], [Birthday], [Prefecture], [Salary], [Address], [RetirementDate], [HireDate], [DeptId] FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Mei] = @Mei, [Sei] = @Sei, [SeiKana] = @SeiKana, [MeiKana] = @MeiKana, [Birthday] = @Birthday, [Prefecture] = @Prefecture, [Salary] = @Salary, [Address] = @Address, [RetirementDate] = @RetirementDate, [HireDate] = @HireDate, [DeptId] = @DeptId WHERE [EmpId] = @EmpId" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="EmpId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpId" Type="String" />
                <asp:Parameter Name="Mei" Type="String" />
                <asp:Parameter Name="Sei" Type="String" />
                <asp:Parameter Name="SeiKana" Type="String" />
                <asp:Parameter Name="MeiKana" Type="String" />
                <asp:Parameter DbType="Date" Name="Birthday" />
                <asp:Parameter Name="Prefecture" Type="String" />
                <asp:Parameter Name="Salary" Type="Decimal" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter DbType="Date" Name="RetirementDate" />
                <asp:Parameter DbType="Date" Name="HireDate" />
                <asp:Parameter Name="DeptId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Mei" Type="String" />
                <asp:Parameter Name="Sei" Type="String" />
                <asp:Parameter Name="SeiKana" Type="String" />
                <asp:Parameter Name="MeiKana" Type="String" />
                <asp:Parameter DbType="Date" Name="Birthday" />
                <asp:Parameter Name="Prefecture" Type="String" />
                <asp:Parameter Name="Salary" Type="Decimal" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter DbType="Date" Name="RetirementDate" />
                <asp:Parameter DbType="Date" Name="HireDate" />
                <asp:Parameter Name="DeptId" Type="Int32" />
                <asp:Parameter Name="EmpId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
                <asp:BoundField DataField="Mei" HeaderText="Mei" SortExpression="Mei" />
                <asp:BoundField DataField="Sei" HeaderText="Sei" SortExpression="Sei" />
                <asp:BoundField DataField="SeiKana" HeaderText="SeiKana" SortExpression="SeiKana" />
                <asp:BoundField DataField="MeiKana" HeaderText="MeiKana" SortExpression="MeiKana" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:BoundField DataField="Prefecture" HeaderText="Prefecture" SortExpression="Prefecture" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="DeptId" HeaderText="DeptId" SortExpression="DeptId" />
                <asp:BoundField DataField="RetirementDate" HeaderText="RetirementDate" SortExpression="RetirementDate" />
                <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KensyuConnectionString %>" SelectCommand="SELECT * FROM [Employee] WHERE ([EmpId] = @EmpId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="EmpId" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpId" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
                <asp:BoundField DataField="Sei" HeaderText="Sei" SortExpression="Sei" />
                <asp:BoundField DataField="Mei" HeaderText="Mei" SortExpression="Mei" />
                <asp:BoundField DataField="SeiKana" HeaderText="SeiKana" SortExpression="SeiKana" />
                <asp:BoundField DataField="MeiKana" HeaderText="MeiKana" SortExpression="MeiKana" />
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                <asp:BoundField DataField="Prefecture" HeaderText="Prefecture" SortExpression="Prefecture" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate" />
                <asp:BoundField DataField="RetirementDate" HeaderText="RetirementDate" SortExpression="RetirementDate" />
                <asp:BoundField DataField="DeptId" HeaderText="DeptId" SortExpression="DeptId" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listview.aspx.cs" Inherits="WebApplication1.listview" %>

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KensyuConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Employee] ([EmpId], [Sei], [Mei], [SeiKana], [MeiKana], [Birthday], [Prefecture], [Address], [Salary], [HireDate], [RetirementDate], [DeptId]) VALUES (@EmpId, @Sei, @Mei, @SeiKana, @MeiKana, @Birthday, @Prefecture, @Address, @Salary, @HireDate, @RetirementDate, @DeptId)" SelectCommand="SELECT * FROM [Employee] WHERE ([EmpId] = @EmpId)" UpdateCommand="UPDATE [Employee] SET [Sei] = @Sei, [Mei] = @Mei, [SeiKana] = @SeiKana, [MeiKana] = @MeiKana, [Birthday] = @Birthday, [Prefecture] = @Prefecture, [Address] = @Address, [Salary] = @Salary, [HireDate] = @HireDate, [RetirementDate] = @RetirementDate, [DeptId] = @DeptId WHERE [EmpId] = @EmpId">
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
                <asp:Parameter DbType="Date" Name="HireDate" />
                <asp:Parameter DbType="Date" Name="RetirementDate" />
                <asp:Parameter Name="DeptId" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="EmpId" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sei" Type="String" />
                <asp:Parameter Name="Mei" Type="String" />
                <asp:Parameter Name="SeiKana" Type="String" />
                <asp:Parameter Name="MeiKana" Type="String" />
                <asp:Parameter DbType="Date" Name="Birthday" />
                <asp:Parameter Name="Prefecture" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Salary" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="HireDate" />
                <asp:Parameter DbType="Date" Name="RetirementDate" />
                <asp:Parameter Name="DeptId" Type="Int32" />
                <asp:Parameter Name="EmpId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                <tr style="">
                    <td></td>
                    <td>
                        <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SeiLabel" runat="server" Text='<%# Eval("Sei") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MeiLabel" runat="server" Text='<%# Eval("Mei") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SeiKanaLabel" runat="server" Text='<%# Eval("SeiKana") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MeiKanaLabel" runat="server" Text='<%# Eval("MeiKana") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PrefectureLabel" runat="server" Text='<%# Eval("Prefecture") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HireDateLabel" runat="server" Text='<%# Eval("HireDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RetirementDateLabel" runat="server" Text='<%# Eval("RetirementDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DeptIdLabel" runat="server" Text='<%# Eval("DeptId") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="キャンセル" />
                    </td>
                    <td>
                        <asp:Label ID="EmpIdLabel1" runat="server" Text='<%# Eval("EmpId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SeiTextBox" runat="server" Text='<%# Bind("Sei") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MeiTextBox" runat="server" Text='<%# Bind("Mei") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SeiKanaTextBox" runat="server" Text='<%# Bind("SeiKana") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MeiKanaTextBox" runat="server" Text='<%# Bind("MeiKana") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PrefectureTextBox" runat="server" Text='<%# Bind("Prefecture") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="HireDateTextBox" runat="server" Text='<%# Bind("HireDate") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RetirementDateTextBox" runat="server" Text='<%# Bind("RetirementDate") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DeptIdTextBox" runat="server" Text='<%# Bind("DeptId") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>データは返されませんでした。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="挿入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="クリア" />
                    </td>
                    <td>
                        <asp:TextBox ID="EmpIdTextBox" runat="server" Text='<%# Bind("EmpId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SeiTextBox" runat="server" Text='<%# Bind("Sei") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MeiTextBox" runat="server" Text='<%# Bind("Mei") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SeiKanaTextBox" runat="server" Text='<%# Bind("SeiKana") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="MeiKanaTextBox" runat="server" Text='<%# Bind("MeiKana") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PrefectureTextBox" runat="server" Text='<%# Bind("Prefecture") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="HireDateTextBox" runat="server" Text='<%# Bind("HireDate") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RetirementDateTextBox" runat="server" Text='<%# Bind("RetirementDate") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DeptIdTextBox" runat="server" Text='<%# Bind("DeptId") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td></td>
                    <td>
                        <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SeiLabel" runat="server" Text='<%# Eval("Sei") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MeiLabel" runat="server" Text='<%# Eval("Mei") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SeiKanaLabel" runat="server" Text='<%# Eval("SeiKana") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MeiKanaLabel" runat="server" Text='<%# Eval("MeiKana") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PrefectureLabel" runat="server" Text='<%# Eval("Prefecture") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HireDateLabel" runat="server" Text='<%# Eval("HireDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RetirementDateLabel" runat="server" Text='<%# Eval("RetirementDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DeptIdLabel" runat="server" Text='<%# Eval("DeptId") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">EmpId</th>
                                    <th runat="server">Sei</th>
                                    <th runat="server">Mei</th>
                                    <th runat="server">SeiKana</th>
                                    <th runat="server">MeiKana</th>
                                    <th runat="server">Birthday</th>
                                    <th runat="server">Prefecture</th>
                                    <th runat="server">Address</th>
                                    <th runat="server">Salary</th>
                                    <th runat="server">HireDate</th>
                                    <th runat="server">RetirementDate</th>
                                    <th runat="server">DeptId</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td></td>
                    <td>
                        <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SeiLabel" runat="server" Text='<%# Eval("Sei") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MeiLabel" runat="server" Text='<%# Eval("Mei") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SeiKanaLabel" runat="server" Text='<%# Eval("SeiKana") %>' />
                    </td>
                    <td>
                        <asp:Label ID="MeiKanaLabel" runat="server" Text='<%# Eval("MeiKana") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PrefectureLabel" runat="server" Text='<%# Eval("Prefecture") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HireDateLabel" runat="server" Text='<%# Eval("HireDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RetirementDateLabel" runat="server" Text='<%# Eval("RetirementDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DeptIdLabel" runat="server" Text='<%# Eval("DeptId") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>

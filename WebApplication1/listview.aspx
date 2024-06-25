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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KensyuConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Employee] ([EmpId], [Sei], [Mei], [SeiKana], [MeiKana], [Birthday], [Prefecture], [Address], [Salary], [HireDate], [RetirementDate], [DeptId]) VALUES (@EmpId, @Sei, @Mei, @SeiKana, @MeiKana, @Birthday, @Prefecture, @Address, @Salary, @HireDate, @RetirementDate, @DeptId)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Sei] = @Sei, [Mei] = @Mei, [SeiKana] = @SeiKana, [MeiKana] = @MeiKana, [Birthday] = @Birthday, [Prefecture] = @Prefecture, [Address] = @Address, [Salary] = @Salary, [HireDate] = @HireDate, [RetirementDate] = @RetirementDate, [DeptId] = @DeptId WHERE [EmpId] = @EmpId" OnSelecting="SqlDataSource1_Selecting">
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
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="EmpId" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Sei" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Mei" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="SeiKana" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="MeiKana" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Birthday" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Prefecture" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Address" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Salary" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="HireDate" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="RetirementDate" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="DeptId" Mode="ReadOnly" />
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
                        <asp:DynamicControl runat="server" DataField="EmpId" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Sei" Mode="Edit" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Mei" Mode="Edit" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="SeiKana" Mode="Edit" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="MeiKana" Mode="Edit" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Birthday" Mode="Edit" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Prefecture" Mode="Edit" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Address" Mode="Edit" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Salary" Mode="Edit" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="HireDate" Mode="Edit" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="RetirementDate" Mode="Edit" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="DeptId" Mode="Edit" />
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
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="挿入" ValidationGroup="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="クリア" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="EmpId" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Sei" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Mei" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="SeiKana" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="MeiKana" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Birthday" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Prefecture" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Address" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Salary" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="HireDate" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="RetirementDate" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="DeptId" Mode="Insert" ValidationGroup="Insert" />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="EmpId" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Sei" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Mei" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="SeiKana" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="MeiKana" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Birthday" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Prefecture" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Address" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Salary" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="HireDate" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="RetirementDate" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="DeptId" Mode="ReadOnly" />
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
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="EmpId" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Sei" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Mei" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="SeiKana" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="MeiKana" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Birthday" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Prefecture" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Address" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Salary" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="HireDate" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="RetirementDate" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="DeptId" Mode="ReadOnly" />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>

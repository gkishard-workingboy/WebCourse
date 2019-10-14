<%@ Page Language="C#" AutoEventWireup="true" CodeFile="管理课程页面.aspx.cs" Inherits="管理课程页面" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 133%;
            height: 288px;
        }
        .auto-style2 {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxButton ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="添加" Theme="iOS">
        </dx:ASPxButton>
    <div>
    
    </div>
        <dx:ASPxGridView ID="GVCourseInfo" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" EnableTheming="True" KeyFieldName="课程编号" Theme="iOS" Font-Names="微软雅黑" Width="100%">
            <Templates>
                <DetailRow>
                    <table class="dx-justification">
                        <tr>
                            <td>
                                <dx:ASPxTextBox ID="Atxt课程编号" runat="server" EnableTheming="True" Text='<%# Eval("课程编号") %>' Theme="iOS" Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="Atxt课程名" runat="server" EnableTheming="True" Text='<%# Eval("课程名") %>' Theme="iOS" Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="Atxt学分" runat="server" EnableTheming="True" Text='<%# Eval("学分") %>' Theme="iOS" Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="Atxt课时" runat="server" EnableTheming="True" Text='<%# Eval("课时") %>' Theme="iOS" Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="Atxt开课时间" runat="server" EnableTheming="True" Text='<%# Eval("开课时间", "{0:d}") %>' Theme="iOS" Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="Atxt结课时间" runat="server" EnableTheming="True" Text='<%# Eval("结课时间", "{0:d}") %>' Theme="iOS" Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="Atxt课程信息" runat="server" EnableTheming="True" Text='<%# Eval("课程信息") %>' Theme="iOS" Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td>
                                <dx:ASPxButton ID="btnSave1" runat="server" Text="保存">
                                </dx:ASPxButton>
                            </td>
                            <td>
                                <dx:ASPxButton ID="btnCancel1" runat="server" Text="取消">
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                </DetailRow>
                <EditForm>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <dx:ASPxLabel ID="alblCourseid" runat="server" Text="课程编号" Theme="iOS">
                                </dx:ASPxLabel>
                            </td>
                            <td colspan="2" class="auto-style2">
                                <dx:ASPxTextBox ID="AtxtKcbh" runat="server" Text='<%# Bind("课程编号") %>' Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td id="lblXf" class="auto-style2">
                                <dx:ASPxLabel ID="alblCoursename" runat="server" Text="课程名" Theme="iOS">
                                </dx:ASPxLabel>
                            </td>
                            <td class="auto-style2">
                                <dx:ASPxTextBox ID="AtxtKcm" runat="server" Text='<%# Bind("课程名") %>' Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="alblCrt" runat="server" Text="学分"></asp:Label>
                            </td>
                            <td colspan="2">
                                <dx:ASPxTextBox ID="AtxtXf" runat="server" Text='<%# Bind("学分") %>' Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td>
                                <asp:Label ID="lblKs" runat="server" Text="课时"></asp:Label>
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="AtxtKs" runat="server" Text='<%# Bind("课时") %>' Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblKk" runat="server" Text="开课时间"></asp:Label>
                            </td>
                            <td colspan="2">
                                <dx:ASPxTextBox ID="AtxtKksj" runat="server" Text='<%# Bind("开课时间", "{0:d}") %>' Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td>
                                <asp:Label ID="lblJk" runat="server" Text="结课时间"></asp:Label>
                            </td>
                            <td>
                                <dx:ASPxTextBox ID="AtxtJksj" runat="server" Text='<%# Bind("结课时间", "{0:d}") %>' Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblXx" runat="server" Text="课程信息"></asp:Label>
                            </td>
                            <td colspan="2">
                                <dx:ASPxTextBox ID="AtxtKcxx" runat="server" Text='<%# Bind("课程信息") %>' Width="170px">
                                </dx:ASPxTextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <dx:ASPxButton ID="btnSave" runat="server" OnClick="btnSave_Click" Text="保存" Theme="iOS">
                                </dx:ASPxButton>
                            </td>
                            <td>
                                <dx:ASPxButton ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="取消" Theme="iOS">
                                </dx:ASPxButton>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </EditForm>
            </Templates>
            <Settings ShowFilterRow="True" ShowTitlePanel="True" />
            <SettingsText Title="管理课程信息" />
            <Columns>
                <dx:GridViewDataTextColumn FieldName="课程编号" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="课程名" ShowInCustomizationForm="True" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="学分" ShowInCustomizationForm="True" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="课时" ShowInCustomizationForm="True" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="开课时间" ShowInCustomizationForm="True" VisibleIndex="5">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="结课时间" ShowInCustomizationForm="True" VisibleIndex="6">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="课程信息" ShowInCustomizationForm="True" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="操作" ShowInCustomizationForm="True" VisibleIndex="8">
                    <DataItemTemplate>
                        <table class="dx-justification">
                            <tr>
                                <td>
                                    <dx:ASPxButton ID="btnModify" runat="server" CommandArgument="<%# Container.VisibleIndex %>" OnClick="btnModify_Click" OnCommand="btnModify_Command" Text="编辑">
                                    </dx:ASPxButton>
                                </td>
                                <td>
                                    <dx:ASPxButton ID="btnDelete" runat="server" CommandArgument="<%# Container.VisibleIndex %>" OnClick="btnDelete_Click" OnCommand="btnDelete_Command" Text="删除">
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                        </table>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
            </Columns>
            <Styles>
                <Header HorizontalAlign="Center">
                </Header>
                <Cell HorizontalAlign="Center">
                </Cell>
            </Styles>
        </dx:ASPxGridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.courseTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_课程编号" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="课程编号" Type="Int32" />
                <asp:Parameter Name="课程名" Type="String" />
                <asp:Parameter Name="学分" Type="Double" />
                <asp:Parameter Name="课时" Type="Int32" />
                <asp:Parameter Name="开课时间" Type="DateTime" />
                <asp:Parameter Name="结课时间" Type="DateTime" />
                <asp:Parameter Name="课程信息" Type="String" />
                <asp:Parameter Name="预留字段1" Type="String" />
                <asp:Parameter Name="预留字段2" Type="String" />
                <asp:Parameter Name="预留字段3" Type="String" />
                <asp:Parameter Name="预留字段4" Type="String" />
                <asp:Parameter Name="预留字段5" Type="String" />
                <asp:Parameter Name="预留字段6" Type="String" />
                <asp:Parameter Name="预留字段7" Type="String" />
                <asp:Parameter Name="预留字段8" Type="String" />
                <asp:Parameter Name="预留字段9" Type="String" />
                <asp:Parameter Name="预留字段10" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="课程名" Type="String" />
                <asp:Parameter Name="学分" Type="Double" />
                <asp:Parameter Name="课时" Type="Int32" />
                <asp:Parameter Name="开课时间" Type="DateTime" />
                <asp:Parameter Name="结课时间" Type="DateTime" />
                <asp:Parameter Name="课程信息" Type="String" />
                <asp:Parameter Name="预留字段1" Type="String" />
                <asp:Parameter Name="预留字段2" Type="String" />
                <asp:Parameter Name="预留字段3" Type="String" />
                <asp:Parameter Name="预留字段4" Type="String" />
                <asp:Parameter Name="预留字段5" Type="String" />
                <asp:Parameter Name="预留字段6" Type="String" />
                <asp:Parameter Name="预留字段7" Type="String" />
                <asp:Parameter Name="预留字段8" Type="String" />
                <asp:Parameter Name="预留字段9" Type="String" />
                <asp:Parameter Name="预留字段10" Type="String" />
                <asp:Parameter Name="Original_课程编号" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>

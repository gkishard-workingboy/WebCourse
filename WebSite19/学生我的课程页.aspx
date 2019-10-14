<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生我的课程页.aspx.cs" Inherits="学生我的课程页" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

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
        <dx:ASPxGridView ID="MyCrs" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Font-Names="微软雅黑" KeyFieldName="学号" Theme="iOS" Width="100%">
            <Settings ShowFilterRow="True" ShowTitlePanel="True" />
            <SettingsText Title="我的课程" />
            <Columns>
                <dx:GridViewDataTextColumn FieldName="课程编号" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="课程名" ShowInCustomizationForm="True" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="开课日期" ShowInCustomizationForm="True" VisibleIndex="5">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="平时成绩" ShowInCustomizationForm="True" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="期末成绩" ShowInCustomizationForm="True" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="总成绩" ShowInCustomizationForm="True" VisibleIndex="8">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy1" TypeName="DataSetTableAdapters.course_studentTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_学号" Type="Int32" />
                <asp:Parameter Name="Original_课程编号" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="学号" Type="Int32" />
                <asp:Parameter Name="课程编号" Type="Int32" />
                <asp:Parameter Name="学生姓名" Type="String" />
                <asp:Parameter Name="课程名" Type="String" />
                <asp:Parameter Name="开课日期" Type="DateTime" />
                <asp:Parameter Name="平时成绩" Type="Int32" />
                <asp:Parameter Name="期末成绩" Type="Int32" />
                <asp:Parameter Name="总成绩" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="stuID" SessionField="StudentID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="学生姓名" Type="String" />
                <asp:Parameter Name="课程名" Type="String" />
                <asp:Parameter Name="开课日期" Type="DateTime" />
                <asp:Parameter Name="平时成绩" Type="Int32" />
                <asp:Parameter Name="期末成绩" Type="Int32" />
                <asp:Parameter Name="总成绩" Type="Int32" />
                <asp:Parameter Name="Original_学号" Type="Int32" />
                <asp:Parameter Name="Original_课程编号" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>

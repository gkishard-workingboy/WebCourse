<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生选课页面.aspx.cs" Inherits="学生选课页面" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            width: 1231px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <dx:ASPxGridView ID="courseSlt" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" EnableTheming="True" KeyFieldName="课程编号" Theme="iOS" Font-Names="微软雅黑" Width="100%">
            <Settings ShowFilterRow="True" ShowTitlePanel="True" />
            <SettingsText Title="学生选课" />
            <Columns>
                <dx:GridViewDataTextColumn FieldName="课程名" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="学分" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="课时" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="开课时间" VisibleIndex="4">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="结课时间" VisibleIndex="5">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="课程信息" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="操作" VisibleIndex="7">
                    <DataItemTemplate>
                        <dx:ASPxButton ID="btnSlt" runat="server" Height="17px" OnClick="btnSlt_Click" OnCommand="btnSlt_Command" Text="选课" CommandArgument="<%# Container.VisibleIndex %>">
                        </dx:ASPxButton>
                    </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="课程编号" ReadOnly="True" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
            </Columns>
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

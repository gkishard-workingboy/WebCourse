using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;
using DevExpress.Web;

public partial class 管理课程页面 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        GVCourseInfo.AddNewRow();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        GVCourseInfo.UpdateEdit();
        GVCourseInfo.DataBind();
        Response.Write("<script>alert('课程编辑成功！')</script>");

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        GVCourseInfo.CancelEdit();
    }
    protected void txtXf_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnModify_Click(object sender, EventArgs e)
    {
        var btnModify=(sender as ASPxButton);
        int index = Convert.ToInt32(btnModify.CommandArgument);
        GVCourseInfo.StartEdit(index);
       
    }
    protected void btnModify_Command(object sender, CommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GVCourseInfo.StartEdit(index);

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        var btnModify = (sender as ASPxButton);
        int index = Convert.ToInt32(btnModify.CommandArgument);
        GVCourseInfo.DeleteRow(index);
        GVCourseInfo.DataBind();
        Response.Write("<script>alert('课程删除成功！')</script>");
      
    }
    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GVCourseInfo.StartEdit(index);
    }
}
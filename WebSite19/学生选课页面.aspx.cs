using DataSetTableAdapters;
using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 学生选课页面 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSlt_Click(object sender, EventArgs e)
    {
        ASPxButton btnSlt = (sender as ASPxButton);
        studentTableAdapter ta=new studentTableAdapter();
        course_studentTableAdapter tb = new course_studentTableAdapter();
        int index = Convert.ToInt32(btnSlt.CommandArgument);
        int crsID =Convert.ToInt32(courseSlt.GetRowValues(index, "课程编号"));
        string crsDate = Convert.ToString(courseSlt.GetRowValues(index, "开课时间"));
        string crsName = Convert.ToString(courseSlt.GetRowValues(index, "课程名"));
        int stuID = Convert.ToInt32(Session["StudentID"]);
        string stuName = ta.GetDataBy学生姓名(stuID).Rows[0][2].ToString();
        if (tb.GetDataBy判断(stuID, crsID).Rows.Count != 1)
        {
            tb.InsertQuery选课表(stuID, crsID, stuName, crsName);
            Response.Write("<script>alert('选课成功！')</script>");
        }
        else
        {
            Response.Write("<script>alert('请勿重复选课！')</script>");
 
        }
        courseSlt.DataBind();
    }


    protected void btnSlt_Command(object sender, CommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
    }
}
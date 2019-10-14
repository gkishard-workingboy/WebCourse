using DataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 学生登录页 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginBtn_Click(object sender, EventArgs e)
    {
        int studentID = Convert.ToInt32(idTxt.Text);
        string studentPsw = pswTxt.Text;
        studentTableAdapter ta = new studentTableAdapter();
        if (ta.GetDataBy学生登陆(studentID, studentPsw).Rows.Count == 1)
        {
           Session["StudentID"]= studentID.ToString();
            Response.Redirect("学生主页.aspx");
        }
        else
        {
            Response.Write("<script>alert('用户名或密码错误')</script>");
            //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Startup", "alert('用户名或密码错误！');", true);
        }
    }
}
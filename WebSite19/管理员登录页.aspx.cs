using DataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginBtn_Click(object sender, EventArgs e)
    {
        int managerID =Convert.ToInt32(idTxt1.Text);
        string managerPsw = pswTxt1.Text;
        administratorTableAdapter ta = new administratorTableAdapter();
        if (ta.GetDataBy登录(managerID, managerPsw).Rows.Count == 1)
        {
            Session["ID"] = managerID;
            Response.Redirect("管理员主页.aspx");
        }
        else
        {
            Response.Write("<script>alert('用户名或密码错误')</script>");
            //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "Startup", "alert('用户名或密码错误！');", true);
        }
    }
}
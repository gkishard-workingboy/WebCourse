<%@ Page Language="C#" AutoEventWireup="true" CodeFile="管理员登录页.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理员登录页</title>
        <style>
            *{
        margin: 0px;
        padding: 0px;
    }
    .clear::before .clear::after{
        content: "";
        display: table;
    }
    .clear::after{
        clear: both;
    }

    body{
       background: url(images/pic1.jpg) no-repeat left center;
       background-size: cover;
    }
    .login{
        width: 750px;
        height: 450px;
        margin: 100px auto;
    }
    .box1{
        width: 450px;
        height: 450px;
        box-sizing: border-box;
        border-right: 1px solid black;
        float: left;
        background-color:rgba(0,0,0,0.4);
        color: #f9f1f1;
    }
    .title{
        width:343px ;
        height: 50px;
        line-height: 50px;
        margin: 100px auto;
        text-align: center;
        font-weight: 400px;
        font-size: 36px;
    }
    .box2{
        background-color: #fff;
        float: left;
        width: 300px;
        height: 450px;
        box-sizing: border-box;
    }
    .box2 img{
        height: 100px;
        margin-left: 100px;
    }
    .head{
        width: 100px;
        height: 30px;
        color: #000000;
        font-size: 24px;
        margin-left: 100px;
        margin-bottom: 30px;
        border-bottom: 3px solid crimson;
    }
   
    input{
            border-style: none;
                border-color: inherit;
                border-width: 0;
                outline: none;
            }
    .uname{
        background-image: url('icon/头像.png');
        background-size: 25px;
        background-repeat: no-repeat;
        background-position: right center;
                height: 19px;
                width: 145px;
            }
    .content{
        position: relative;
        width: 184px;
        height: 30px;
        margin-left: 50px;
        border:2px solid #e4c4b7;
                top: 4px;
                left: -3px;
                margin-right: auto;
                margin-top: 10px;
                margin-bottom: 10px;
            }
    #eye{
        position: absolute;
        height: 18px;
        right: 0;
        top:5px;
    }
    
    .validation{
        width: 200px;
        height: 20px;
        line-height: 20px;
        font-size: 13px;

    }
    button {
        border-radius: 5%;
        width: 200px;
        height: 35px;
        margin: 5px auto;
        margin-left: 50px;
        background-color: #9d9592;
        color: #fff;
        font-size: 18px
    }
    .wrong{
         background: url(icon/错误.png) no-repeat left center;
         background-size:20px;
         color: red;
         padding-left: 18px;

     }
     .success{
         background: url(icon/正确.png) no-repeat left center;
         background-size: 20px;
         color: green;
         padding-left: 18px;
     }
            .auto-style1 {
                width: 100%;
            }
            .auto-style3 {
                width: 107px;
            }
            .auto-style4 {
                width: 70px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="bg">
    <div class="login">
        <div class="box1">
            <h2 class="title">教务网站<br />管理员登录系统</h2>
        </div>
        <div class="box2">
            <img src="logo/BNF.png" alt="">
            <div class="head"> 账号登录</div>
            <div class="content">
            &nbsp;<asp:TextBox ID="idTxt1" runat="server" placeholder="用户名"></asp:TextBox>
            </div> 
            <div class="content">
&nbsp;<asp:TextBox ID="pswTxt1" runat="server" TextMode="Password" placeholder="密码"></asp:TextBox>
            </div> 
            <br/> 
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="loginBtn" runat="server" Font-Names="微软雅黑" Height="47px" Text="登录" Width="74px" OnClick="loginBtn_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="footer"></div>

</div>
        <script>
            var pwd = document.querySelector('.pwd');
            var eye = document.querySelector('#eye');
            var flag = 0;
            eye.onclick = function () {
                if (flag == 0) {//点击切换状态 下次点击在切换回来 可用flag设置变量 
                    pwd.type = 'text';
                    eye.src = 'icon/密码显示.png';
                    flag = 1;
                } else {
                    pwd.type = 'password';
                    eye.src = 'icon/输入_填充.png';
                    flag = 0;
                }
            }
            var btn = document.querySelector('button');
            btn.onclick = function () {
                location.assign('#');
            }

</script>
    </form>
</body>
</html>

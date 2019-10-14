<%@ Page Language="C#" AutoEventWireup="true" CodeFile="管理员主页.aspx.cs" Inherits="管理员主页" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
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
    a{
        text-decoration: none;
        color: #000;
    }
    li{
        list-style: none;
    }
    html,body{
        height: 100%;
        background-color: #fff;
    }
    .top{
        height: 12%;
        background:url(images/green2.png) no-repeat center center;
        background-size:100%;
        text-align: center;
        line-height: 60px;
        overflow: hidden;
    }
    nav{
        width: 100%;
        height: 60px;
        margin: 10px auto;

    }

    .logo{
         float: left;
    }
    .logo img{
        height: 60px;
    }

    nav h1{
        float: left;
        text-align: center;
        margin-left: 400px;
        color: #fff;
        font-weight: normal;
    }
    .personal{
            height: 60px;
            line-height: 60px;
            float: right; 
    }
    .personal a{
        display: inline-block;
        height: 36px;
        margin: 20px 0px;
        line-height: 36px;
        padding:5px 10px;
        border-right: 1px solid white;
        color: #fff;
    }
    .personal a:hover{
        background-color:rgba(248, 246, 238, 0.4);
    }
    .personal img{
        height: 30px;
        background-color: #fff;
        border-radius: 100%;
        margin: -10px 10px;
        padding: 5px 5px;
    }

    .main{
        width: 100%;
        height: 80%;
        margin: 0 auto;
        text-align: center;
        line-height: 400px;
        overflow:hidden;/*由于父级盒子未给高度 必须清除浮动*/
    }
   
    .main .left {
        width: 18%;
        height: 100%;
        background: url(images/white.png) no-repeat center center;
        background-size: cover;
        float: left;
        overflow: hidden;
    }

    .main .left li{
            color: #000000;
            font-size: 16px;
            padding:0 20px;
            height: 80px;  
            line-height: 80px;
            cursor: pointer;        
    }


   /*.main .left .change{
        background-color: #1d7c2b;
    }*/ 
    .main .left li:hover{
        background-color: #1d7c2b;
    }
    

    .main .right{
        width: 82%;
        height: 100%;
        float: left;
        
        
    }
    /* .main .right ul{
         margin-top: 150px;
    } */

    /* .main .right li{
        width: 300px;
        height: 50px;
        line-height: 50px;
        margin:20px auto;
        font-size: 25px;
        font-weight: bold;
        color: #fff;
        background-color: rgba(0,0,0,.4);
        cursor: pointer;
    }
    .main .right li:hover{
        background-color: rgba(255, 255, 255, 0.4);
        color:gold;
    } */
    .main .right .initShow{
        width: 100%;
        height: 100%;
        background:url(images/湖大图书馆.jpg) no-repeat center center;
        background-size: cover;
        overflow: hidden;
    
       
    }
    .main .right .courseMsg{
        width: 100%;
        height: 100%;
        background:url(images/white.png) no-repeat center center;
        background-size: cover;
        overflow: hidden;
        display:none;
       
    }
    .main .right .userMng{
        width: 100%;
        height: 100%;
        background:url(images/white.png) no-repeat center center;
        background-size: cover;
        display: none;
        overflow: hidden;
    }
    .main .right .messageMng{
        width: 100%;
        height: 100%;
        background:url(images/white.png) no-repeat center center;
        background-size: cover;
        display: none;
        overflow: hidden;
    }
    .main .right .systemMng{
        width: 100%;
        height: 100%;
        background:url(images/white.png) no-repeat center center;
        background-size: cover;
        display: none;
        overflow: hidden;
    }



    .footer{
        width: 100%;
        height: 8%;
        text-align: center;
        margin-top: 0px;
        background: url(images/white.png) no-repeat center center;
        background-size: cover;
        overflow: hidden;
    }
    .footer h3{
        margin:0 auto;
        margin-top: 20px;
        color: #000;
        font-weight: 200;
        font-size: 12px;
    }
    </style>
</head>
<body>
    <div class="top">
        <nav>
        <!-- logo -->
        <div class="logo">
            <img src="logo/湖北大学logo.png" alt="">
        </div>
        <h1>教务管理系统</h1>

        <div class="personal">
            <a href="#"><img src="icon/课程管理.png" >最新课程</a>
            <a href="#"><img src="icon/校园专区.png"  >校园新闻 </a>
            <a href="#"><img src="icon/消息通知1.png" >我的消息 </a>
        </div>
        </nav>
    </div>


    <div class="main">
        <div class="left">
            <ul>
                <li class="change" >课程信息</li>
                <li>用户管理</li>
                <li>消息更新</li>
                <li>系统管理</li>
                
            </ul>
        </div>

        <div class="right">

              <div class="initShow"></div>
              <div class="courseMsg">
                  <iframe src="管理课程页面.aspx" frameborder="0" width="100%" height="100%"
                  ></iframe>
                <!-- <ul>
                    <li class="course">查询课程</li>
                    <li class="course">添加课程</li>
                    <li class="course">删除课程</li>
                    <li class="course">修改课程</li>
                    
                </ul> -->
            </div>
            <div class="userMng">
                    <iframe src="敬请期待.html" frameborder="0" width="100%" height="100%"></iframe>
                <!-- <ul>
                    <li  class="user">查询用户</li>
                    <li  class="user">新建用户</li>
                    <li  class="user">管理用户</li>
                </ul> -->
            </div>
            <div class="messageMng">
                    <iframe src="敬请期待.html" frameborder="0" width="100%" height="100%"
                    ></iframe>
                <!-- <ul>
                    <li>新闻发布</li>
                    <li>通知发送</li>    
                </ul> -->
            </div>
            <div class="systemMng">
                    <iframe src="敬请期待.html" frameborder="0" width="100%" height="100%"
                    ></iframe>
                <!-- <ul>
                    <li>系统开关</li>
                </ul> -->
            </div>
        </div>
    </div>

    <div class="footer"><h3>Copyright 湖北大学计算机信息与工程学院; 2017计算机科学与技术 湖北省武汉市武昌区</h3></div>
    
    <script>
        var lis = document.querySelector('.left').querySelectorAll('li');
        var initShow = document.querySelector('.right').querySelector('.initShow');
        var courseMsg = document.querySelector('.right').querySelector('.courseMsg');
        var userMng = document.querySelector('.right').querySelector('.userMng');
        var messageMng = document.querySelector('.right').querySelector('.messageMng');
        var systemMng = document.querySelector('.right').querySelector('.systemMng');


        lis[0].onclick = function () {
            courseMsg.style.display = 'block';
            this.className = 'change';

            lis[1].className = '';
            lis[2].className = '';
            lis[3].className = '';
            initShow.style.display = 'none';
            userMng.style.display = 'none';
            messageMng.style.display = 'none';
            systemMng.style.display = 'none';
        }
        lis[1].onclick = function () {
            userMng.style.display = 'block';
            this.className = 'change';
            lis[0].className = '';

            lis[2].className = '';
            lis[3].className = '';
            initShow.style.display = 'none';
            courseMsg.style.display = 'none';
            messageMng.style.display = 'none';
            systemMng.style.display = 'none';
        }
        lis[2].onclick = function () {
            messageMng.style.display = 'block';
            this.className = 'change';
            lis[0].className = '';
            lis[1].className = '';

            lis[3].className = '';
            initShow.style.display = 'none';
            userMng.style.display = 'none';
            courseMsg.style.display = 'none';
            systemMng.style.display = 'none';
        }
        lis[3].onclick = function () {
            systemMng.style.display = 'block';
            this.className = 'change';
            lis[0].className = '';
            lis[1].className = '';
            lis[2].className = '';
            initShow.style.display = 'none';
            userMng.style.display = 'none';
            courseMsg.style.display = 'none';
            messageMng.style.display = 'none';
        }








    </script>
</body>
</html>

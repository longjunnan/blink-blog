<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>新增页面</title>
  <link rel="stylesheet" href="../../public/css/bootstrap.css">
</head>

<body>
  <nav class="navbar navbar-default">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="../index.jsp">
          <img width="90px" src="../../public/img/logo3.png" alt="">
        </a>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <form class="navbar-form navbar-left">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
        </form>
        <ul class="nav navbar-nav navbar-right">
               <%
          if(session.getAttribute("userName")!=null){
          %>
          <a class="btn btn-default navbar-btn" href="./topic/new.html">发起</a>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img width="20" height="20" src="../../upload/${uif.headImg }" alt=""> <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li class="dropdown-current-user">
                当前登录用户: ${userName}
              </li>
              <li role="separator" class="divider"></li>
              <li><a href="../settings/profile.jsp">个人主页</a></li>
              <li><a href="../settings/admin.jsp">设置</a></li>
              <li><a href="../loginoutAction">退出</a></li>
            </ul>
          </li>
          <%}else {
          %>
          <a class="btn btn-primary navbar-btn" href="./login.jsp">登录</a>
          <a class="btn btn-success navbar-btn" href="./register.jsp">注册</a>
         <%
          } 
         %>
        </ul>
      </div>
      <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
  </nav>
  <% 
    String content= request.getParameter("content");
    String title=request.getParameter("title");
    String contentid =request.getParameter("contentid");
  %>
  <section class="container">
    <div class="row">
      <div class="col-md-5">
        <form action="../../updateContent?contentid=<%=contentid %>" method="post">
          <div class="form-group">
            <label for="exampleInputEmail1">标题</label>
            <br>
            <%=title %>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">内容</label>
            <textarea class="form-control" rows="3" name="contents.content" ><%=content %></textarea>
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
      </div>
    </div>
  </section>
  <footer class="container">
    <p>Copyright © 2018</p>
  </footer>
  <script src="../../public/js/jquery.js"></script>
  <script src="../../public/js/bootstrap.js"></script>

</body>

</html>






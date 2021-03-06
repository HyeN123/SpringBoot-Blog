<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Hello Spring Blog</title>
    <link rel="stylesheet" href="/webjars/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="/webjars/origoni-startbootstrap-clean-blog/1.0.3/css/clean-blog.min.css">
    <style>
        .content-section > p > img{
            width:100%;
            height:auto;
        }
    </style>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">Start Bootstrap</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="/post/list">Home</a>
                </li>
                <c:if test="${role.equals('admin')}">
                    <li>
                        <a href="/post/write">Write Post</a>
                    </li>
                </c:if>
                <c:if test="${role.equals('member') || role.equals('admin')}">
                    <li>
                        <a href="/user/logout">Logout</a>
                    </li>
                </c:if>
                <c:if test="${role == null}">
                    <li>
                        <a href="/user/signup">Sing Up</a>
                    </li>
                    <li>
                        <a href="/user/login">Login</a>
                    </li>
                </c:if>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header" style="background-image: url('https://images.unsplash.com/photo-1583701662397-f5b882ff4787?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-heading">
                    <h1>${post.title}</h1>
                    <h2 class="subheading">${post.subtitle}</h2>
                    <span class="meta">Posted by <a href="#">HAHA</a> on ${post.regDate}</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Post Content -->
<article>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 content-section" style="word-break:break-all;">
                ${post.content}
            </div>
        </div>
        <c:if test="${role.equals('admin')}">
            <div class="pull-right">
                <a href="/post/${post.id}/edit">
                    <button type="button" class="btn btn-warning">수정</button>
                </a>
                <a href="/post/${post.id}/delete" onclick="if(!confirm('진심이에요?')){return false;}">
                    <button type="button" class="btn btn-danger">삭제</button>
                </a>
            </div>
        </c:if>
    </div>
</article>

<hr>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <ul class="list-inline text-center">
                    <li>
                        <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                        </a>
                    </li>
                </ul>
                <p class="copyright text-muted">Copyright &copy; Your Website 2014</p>
            </div>
        </div>
    </div>
</footer>

<script src="/webjars/jquery/2.1.3/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="/webjars/origoni-startbootstrap-clean-blog/1.0.3/js/clean-blog.min.js"></script>
</body>
</html>
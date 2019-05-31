<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <title>Credit Bank | Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="css/bootstrap.min.css">
            </head>
            <body>
                <div class="jumbotron jumbotron-fluid text-white" style="margin-bottom:0;background-color:dodgerblue">
                    <div class="container">
                        <h1 class="display-3">Credit Bank</h1>
                    </div>
                </div>
                <div class="container" style="margin-top:30px">
                    <div class="row">
                        <div class="col-sm-8" >
                            <p class="lead">
                            Welcome to credit bank.
                            Submit your application and know your credit status.
                            To submit a new application, click on "Register New Application".
                            To know the application status, click on "View Applications"
                            </p>
                        </div>
                        <div class="col-sm-4">
                            <a href="<spring:url value="/userRegister" />">
                            <button type="button" class="btn btn-primary">Register New Application</button>
                            </a>
                            <br/><br/>
                            <a href="<spring:url value="/user_dashboard" />">
                            <button type="button" class="btn btn-primary">View Applications</button>
                            </a>
                        </div>
                    </div>
                </div>
            </body>
        </html>



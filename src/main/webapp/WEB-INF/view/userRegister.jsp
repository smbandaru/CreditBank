<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Credit Bank | User Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
    .error{color:red}
    </style>
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark fixed-top" style="background-color:dodgerblue">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="/">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/dashboard">Dashboard</a>
        </li>
    </ul>
</nav>
<div class="container" style="margin-top:80px">

    <h2>New Loan Application</h2>
    <br/>
    <br/>

    <form:form action="/userRegister" method="POST" modelAttribute="loanApplication">
        <div class="form-inline">
            <label class="mb-2 mr-sm-2">Application Id:</label>
            <form:input type="text" class="form-control mb-2 mr-sm-2" path="applicationId" placeholder="Enter Application Id"/>
            <form:errors path="applicationId" class="error"/>
        </div>

        <div class="form-group">
            <label class="mb-2 mr-sm-2">Applicant Name:</label>
            <div class="row">
            <div class="col">
            <form:input type="text" class="form-control mb-2 mr-sm-2" path="firstName" placeholder="First Name"/>
            <form:errors path="firstName" class="error"/>
            </div>
            <div class="col">
            <form:input type="text" class="form-control mb-2 mr-sm-2" path="middleName" placeholder="Middle Name (Optional)"/>
            <form:errors path="middleName" class="error"/>
            </div>
            <div class="col">
            <form:input type="text" class="form-control mb-2 mr-sm-2" path="lastName" placeholder="Last Name"/>
            <form:errors path="lastName" class="error"/>
            </div>
            </div>
        </div>

      <div class="form-group">
      <div class="row">
          <div class="col">
            <label class="mb-2 mr-sm-2">Date of Birth:</label>
            <form:input type="date" class="form-control mb-2 mr-sm-2" path="dob" placeholder="Date of Birth"/>
           </div>
            <div class="col">
                <label class="mb-2 mr-sm-2">Gender:</label><br>
                <div class="form-check-inline ">
                    <form:radiobutton class="form-check-input" path="gender" value="Male"/>Male
                    <form:radiobutton class="form-check-input" path="gender" value="Female"/>Female
                </div>
            </div>

            <div class="col">
                <label class="mb-2 mr-sm-2">Marital Status:</label>
                <form:select class="form-control" path="maritalStatus">
                    <option>Single</option>
                    <option>Married</option>
                    <option>Divorced</option>
                    <option>Separated</option>
                    <option>Widowed</option>
                </form:select>
            </div>
        </div>
        </div>

        <div class="form-inline">
            <label class="mb-2 mr-sm-2">SSN:</label>
            <form:input type="text" class="form-control mb-2 mr-sm-2" path="ssn" placeholder="SSN" />
        </div>
<!--
        <div class="form-inline">
            <label class="mb-2 mr-sm-2">Loan amount:</label>
            <input type="text" class="form-control mb-2 mr-sm-2" path="amount" placeholder="In Rupees">

            <label class="mb-2 mr-sm-2">Loan purpose:</label>
            <input type="text" class="form-control mb-2 mr-sm-2" path="purpose" placeholder="What do you want loan for?">

            <label class="mb-2 mr-sm-2">Description:</label>
            <input type="text" class="form-control mb-2 mr-sm-2" path="description" placeholder="Describe details">
        </div>


        <div>
            Address Line 1:
            <input type="text" class="form-control mb-2 mr-sm-2" path="addressLine1" placeholder="Address Line 1">

            <label class="mb-2 mr-sm-2">Address Line 2:</label>
            <input type="text" class="form-control mb-2 mr-sm-2" path="addressLine2" placeholder="Line 2 (Optional)">
        </div>

        <div class="form-inline">
            <label class="mb-2 mr-sm-2">City:</label>
            <input type="text" class="form-control mb-2 mr-sm-2" path="city" placeholder="City">

            <label class="mb-2 mr-sm-2">State:</label>
            <input type="text" class="form-control mb-2 mr-sm-2" path="state" placeholder="State">

            <label class="mb-2 mr-sm-2">Postal code:</label>
            <input type="text" class="form-control mb-2 mr-sm-2" path="postalCode" placeholder="Zip code">
        </div>
-->
        <br/>
        <br/>
        <input type="submit" class="btn btn-primary">
    </form:form>
</div>
</body>
</html>



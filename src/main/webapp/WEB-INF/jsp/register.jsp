<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Register</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>

  <body>

    <div class="container">
        <form:form method="POST" modelAttribute="user" class="form-signin">
            <h2 class="form-signin-heading text-center">Register Yourself</h2>
            
            <!-- name -->
            <spring:bind path="name">
                <div class="form-group">
                    <form:input type="text" path="name" class="form-control" placeholder="Full Name"
                                autofocus="true"></form:input>
                </div>
            </spring:bind>

            <!-- gender -->
            <spring:bind path="gender">
                <div class="form-group">
                    <form:input type="text" path="gender" class="form-control" placeholder="Gender"
                                autofocus="true"></form:input>
                </div>
            </spring:bind>

            <!-- dob -->
            <spring:bind path="dob">
                <div class="form-group">
                    <form:input type="text" path="dob" class="form-control" placeholder="Date of Birth (DD-MM-YYYY)"
                                autofocus="true"></form:input>
                </div>
            </spring:bind>

            <!-- address -->
            <spring:bind path="address">
                <div class="form-group">
                    <form:select class="form-control" path="address" aria-label="Default select example">
  <option selected>Select Gender</option>
  <option value="Male">Male</option>
  <option value="Female">Female</option>
  <option value="UNKNOWN">Prefer Not to Say</option>
</form:select>
                </div>
            </spring:bind>

            <!-- city -->
            <spring:bind path="city">
                <div class="form-group">
                    <form:input type="text" path="city" class="form-control" placeholder="City"
                                autofocus="true"></form:input>
                </div>
            </spring:bind>

            <!-- state -->
            <spring:bind path="state">
                <div class="form-group">
                    <form:input type="text" path="state" class="form-control" placeholder="State"
                                autofocus="true"></form:input>
                </div>
            </spring:bind>

            <!-- email -->
            <spring:bind path="email">
                <div class="form-group">
                    <form:input type="text" path="email" class="form-control" placeholder="Email id"
                                autofocus="true"></form:input>
                </div>
            </spring:bind>

            <!-- password -->
            <spring:bind path="password">
                <div class="form-group">
                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                </div>
            </spring:bind>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
        </form:form>

    </div>

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
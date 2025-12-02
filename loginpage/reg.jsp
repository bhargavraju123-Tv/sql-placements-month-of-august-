<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>

<style>
    body{
        margin:0;
        padding:0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #4b79a1, #283e51);
        height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
    }

    .card{
        background: #fff;
        width: 400px;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 0 20px rgba(0,0,0,0.2);
        animation: fadeIn 0.6s ease-in-out;
    }

    @keyframes fadeIn{
        from{opacity:0; transform: translateY(-10px);}
        to{opacity:1; transform: translateY(0);}
    }

    h2{
        text-align: center;
        margin-bottom: 20px;
        color:#4a4a4a;
    }

    table{
        width: 100%;
    }

    input[type="text"],
    input[type="password"]{
        width: 95%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }

    input[type="submit"],
    input[type="reset"]{
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 6px;
        font-size: 15px;
        cursor: pointer;
        color: #fff;
        margin-top: 8px;
    }

    input[type="submit"]{
        background-color: #4CAF50;
    }

    input[type="reset"]{
        background-color: #f44336;
    }

    input[type="submit"]:hover{
        background-color: #46a049;
    }

    input[type="reset"]:hover{
        background-color: #e53935;
    }

    .login-link{
        text-align:center;
        margin-top:10px;
    }

    a{
        text-decoration:none;
        color:#6e8efb;
        font-weight:bold;
    }

</style>
</head>

<body>
<div class="card">
    <h2>Registration Form</h2>

    <form method="post" action="registration.jsp" name="regForm" onsubmit="return validateForm()">
        <table cellpadding="8">
            <tr>
                <td>First Name</td>
                <td><input type="text" name="fname" required></td>
            </tr>

            <tr>
                <td>Last Name</td>
                <td><input type="text" name="lname" required></td>
            </tr>

            <tr>
                <td>Email</td>
                <td><input type="text" name="email" required></td>
            </tr>

            <tr>
                <td>User Name</td>
                <td><input type="text" name="uname" required></td>
            </tr>

            <tr>
                <td>Password</td>
                <td><input type="password" name="pass" required></td>
            </tr>

            <tr>
                <td>Confirm Password</td>
                <td><input type="password" name="cpass" required></td>
            </tr>

            <tr>yyyy
                <td colspan="2">
                    <input type="submit" value="Submit">
                    <input type="reset" value="Reset">
                </td>
            </tr>
        </table>

        <div class="login-link">
            Already registered? <a href="index.jsp">Login here</a>
        </div>
    </form>
</div>

<script>
function validateForm(){
    let pass = document.forms["regForm"]["pass"].value;
    let conf  = document.forms["regForm"]["cpass"].value;

    if(pass !== conf){
        alert("Passwords do not match!");
        return false;
    }
    return true;
}
</script>

</body>
</html>

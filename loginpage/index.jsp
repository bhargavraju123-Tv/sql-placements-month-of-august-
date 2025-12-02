<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

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
        background:#fff;
        width:360px;
        padding:25px;
        border-radius:12px;
        box-shadow:0 0 15px rgba(0,0,0,0.25);
        animation:fadeIn 0.6s ease-in-out;
    }

    @keyframes fadeIn{
        from {opacity:0; transform:translateY(-10px);}
        to {opacity:1; transform:translateY(0);}
    }

    h2{
        text-align:center;
        margin-bottom:20px;
        color:#333;
    }

    table{
        width:100%;
    }

    input[type="text"],
    input[type="password"]{
        width:95%;
        padding:10px;
        border:1px solid #bbb;
        border-radius:6px;
        font-size:14px;
    }

    input[type="submit"],
    input[type="reset"]{
        width:100%;
        padding:10px;
        border:none;
        border-radius:6px;
        font-size:15px;
        cursor:pointer;
        color:#fff;
        margin-top:8px;
    }

    input[type="submit"]{
        background:#4CAF50;
    }

    input[type="reset"]{
        background:#f44336;
    }

    input[type="submit"]:hover{
        background:#43a047;
    }

    input[type="reset"]:hover{
        background:#e53935;
    }

    .reg-link{
        text-align:center;
        margin-top:12px;
        font-size:14px;
    }

    .reg-link a{
        color:#4b79a1;
        text-decoration:none;
        font-weight:bold;
    }
</style>

</head>
<body>

<div class="card">
    <h2>Login Here</h2>

    <form method="post" action="login.jsp">
        <table cellpadding="8">

            <tr>
                <td>User Name</td>
                <td><input type="text" name="uname" required></td>
            </tr>

            <tr>
                <td>Password</td>
                <td><input type="password" name="pass" required></td>
            </tr>

            <tr>
                <td colspan="2">
                    <input type="submit" value="Login">
                    <input type="reset" value="Reset">
                </td>
            </tr>

        </table>

        <div class="reg-link">
            Yet not registered? <a href="reg.jsp">Register here</a>
        </div>
    </form>
</div>

</body>
</html>

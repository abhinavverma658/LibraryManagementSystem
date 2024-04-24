<!DOCTYPE html>
<html>
<head>
    <title>Library Management System</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5 text-center">
    <h2>Welcome to ITS Library Management System</h2>
    <div class="row mt-4">
        <div class="col-md-6">
            <button class="btn btn-primary btn-block" onclick="loginAsAdmin()">Login as Admin</button>
        </div>
        <div class="col-md-6">
            <button class="btn btn-success btn-block" onclick="loginAsUser()">Login as User</button>
        </div>
    </div>
</div>

<script>
function loginAsAdmin() {
    window.location.href = "adminLogin.jsp";
}

function loginAsUser() {
    window.location.href = "userLogin.jsp";
}
</script>

</body>
</html>

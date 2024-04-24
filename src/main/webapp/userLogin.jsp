<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2>User Login</h2>
    <form id="userLoginForm" method="post">
        <div class="form-group">
            <label for="userId">USER ID:</label>
            <input type="text" class="form-control" id="userId" name="userId" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary" name="loginBtn">Login</button>
        <button type="button" class="btn btn-secondary" onclick="cancelLogin()">Cancel</button>
    </form>
    <div id="errorMessage" class="mt-3 text-danger">
        <%
        if(request.getMethod().equals("POST")) {
            String userId = request.getParameter("userId");
            String password = request.getParameter("password");

            // Connect to the database
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            try {
                // Load the JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish the connection
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "Abhinav2024");

                // Prepare the SQL query
                String sql = "SELECT * FROM user_table WHERE user_id=? AND password=?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, userId);
                pstmt.setString(2, password);

                // Execute the query
                rs = pstmt.executeQuery();

                // Check if user exists
                if(rs.next()) {
                    // Redirect to User Home Page
                    response.sendRedirect("userHome.jsp");
                } else {
                    out.println("Invalid USER ID or Password");
                }
            } catch(Exception e) {
                e.printStackTrace();
                out.println("Error: " + e.getMessage());
            } finally {
                try {
                    if(rs != null) rs.close();
                    if(pstmt != null) pstmt.close();
                    if(conn != null) conn.close();
                } catch(SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        %>
    </div>
</div>

<script>
function cancelLogin() {
    window.location.href = "index.jsp";
}
</script>

</body>
</html>

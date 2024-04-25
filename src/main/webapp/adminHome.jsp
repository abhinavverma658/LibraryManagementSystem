<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
     <h2>Welcome Admin!</h2>
    <div class="row mt-4">
        <div class="col-md-4">
            <button class="btn btn-primary btn-block" onclick="goToMaintenance()">Maintenance</button>
        </div>
        <div class="col-md-4">
            <button class="btn btn-success btn-block" onclick="goToReport()">Report</button>
        </div>
        <div class="col-md-4">
            <button class="btn btn-info btn-block" onclick="goToTransaction()">Transaction</button>
        </div>
    </div>

    <div class="mt-5">
        <h3>Product Details</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>CODE NO FROM</th>
                    <th>CODE NO TO</th>
                    <th>CATEGORY</th>
                </tr>
            </thead>
            <tbody>
                <%
                // Connect to the database
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                try {
                    // Load the JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Establish the connection
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "root", "Abhinav2024");

                    // Execute the query to retrieve product details
                    String sql = "SELECT code_no_from, code_no_to, category FROM product_details";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(sql);

                    // Display product details in the table
                    while(rs.next()) {
                        out.println("<tr>");
                        out.println("<td>" + rs.getString("code_no_from") + "</td>");
                        out.println("<td>" + rs.getString("code_no_to") + "</td>");
                        out.println("<td>" + rs.getString("category") + "</td>");
                        out.println("</tr>");
                    }
                } catch(Exception e) {
                    e.printStackTrace();
                    out.println("Error: " + e.getMessage());
                } finally {
                    try {
                        if(rs != null) rs.close();
                        if(stmt != null) stmt.close();
                        if(conn != null) conn.close();
                    } catch(SQLException e) {
                        e.printStackTrace();
                    }
                }
                %>
            </tbody>
        </table>
    </div>

    <div class="mt-4">
    <button class="btn btn-secondary" onclick="goBack()">Back</button>
        <button class="btn btn-danger" onclick="logout()">Logout</button>
    </div>
</div>

<script>
function goToMaintenance() {
    // Redirect to Maintenance page
    window.location.href = "maintenance.jsp";
}

function goToReport() {
    // Redirect to Report page
    window.location.href = "adminreports.jsp";
}

function goToTransaction() {
    // Redirect to Transaction page
    window.location.href = "adminTransactions.jsp";
}

function logout() {
    // Redirect to Logout page or invalidate session
    window.location.href = "adminlogout.jsp";
}
function goBack() {
    // Redirect to Logout page or invalidate session
    window.location.href = "adminLogin.jsp";
}
</script>

</body>
</html>

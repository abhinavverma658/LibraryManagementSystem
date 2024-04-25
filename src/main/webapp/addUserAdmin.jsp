<%@ page import="java.sql.*, java.io.*" %>

<%
    // Retrieve form parameters
    String userType = request.getParameter("userType");
    String userName = request.getParameter("userName");
    String status = request.getParameter("status");
    String isAdmin = request.getParameter("isAdmin");

    // Debug: Print retrieved parameters
    System.out.println("userType: " + userType);
    System.out.println("userName: " + userName);
    System.out.println("status: " + status);
    System.out.println("isAdmin: " + isAdmin);

    // Database connection details
    String url = "jdbc:mysql://localhost:3306/maintenance";
    String user = "root";
    String password = "Abhinav2024";

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load the JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish the database connection
        conn = DriverManager.getConnection(url, user, password);

        // SQL query to insert data into the database
        String query = "INSERT INTO users (user_type, user_name, status, is_admin) VALUES (?, ?, ?, ?)";

        // Create a PreparedStatement object to execute the query
        pstmt = conn.prepareStatement(query);

        // Set the parameter values
        pstmt.setString(1, userType);
        pstmt.setString(2, userName);
        pstmt.setString(3, status);
        pstmt.setString(4, isAdmin);

        // Execute the query
        pstmt.executeUpdate();

        // Set success message
        request.setAttribute("message", "success");
    } catch (Exception e) {
        e.printStackTrace();
        // Set error message
        request.setAttribute("message", "error");
    } finally {
        // Close the resources
        try {
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

<!-- Redirect using JavaScript -->
<script>
    var message = '<%= request.getAttribute("message") %>';
    if (message === "success") {
        alert("User added successfully!");
        window.location.href = "maintenance.jsp";
    } else {
        alert("Error adding user!");
        window.location.href = "maintenance.jsp";
    }
</script>

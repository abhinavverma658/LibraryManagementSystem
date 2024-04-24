<%@ page import="java.sql.*" %>
<%
    String bookOrMovie = request.getParameter("bookOrMovie");
    String bookMovieName = request.getParameter("bookMovieName");
    String dateOfProcurement = request.getParameter("dateOfProcurement");
    int quantity = Integer.parseInt(request.getParameter("quantity"));

    // Database connection details
    String url = "jdbc:mysql://localhost:3306/library";
    String user = "root";
    String password = "Abhinav2024";

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Establish connection
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        // Insert data into database
        String query = "INSERT INTO books_movies (type, name, procurement_date, quantity) VALUES (?, ?, ?, ?)";
        pstmt = conn.prepareStatement(query);
        pstmt.setString(1, bookOrMovie);
        pstmt.setString(2, bookMovieName);
        pstmt.setString(3, dateOfProcurement);
        pstmt.setInt(4, quantity);

        int rowsInserted = pstmt.executeUpdate();

        if(rowsInserted > 0) {
            out.println("<script>alert('Data added successfully!');</script>");
        } else {
            out.println("<script>alert('Failed to add data.');</script>");
        }
    } catch(Exception e) {
        e.printStackTrace();
        out.println("<script>alert('Error: " + e.getMessage() + "');</script>");
    } finally {
        try {
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }
%>

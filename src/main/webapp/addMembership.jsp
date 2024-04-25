<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Connect to MySQL database
    Connection connection = null;
    PreparedStatement preparedStatement = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/maintenance", "root", "Abhinav2024");

        // Get form data from request parameters
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String contactNo = request.getParameter("contactNo");
        String contactAddress = request.getParameter("contactAddress");
        String adharNo = request.getParameter("adharNo");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String membershipType = request.getParameter("membershipType");
        System.out.println("Adhar No. from form: [" + adharNo + "]");


        // Validate adharNo
        if(adharNo == null || adharNo.trim().isEmpty()) {
            out.println("<p>Error: Adhar No. is required.</p>");
            return;
        }

        // Prepare INSERT query
        String sql = "INSERT INTO membership (first_name, last_name, contact_no, contact_address, adhar_no, start_date, end_date, membership_type) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        preparedStatement = connection.prepareStatement(sql);

        preparedStatement.setString(1, firstName);
        preparedStatement.setString(2, lastName);
        preparedStatement.setString(3, contactNo);
        preparedStatement.setString(4, contactAddress);
        preparedStatement.setString(5, adharNo);
        preparedStatement.setString(6, startDate);
        preparedStatement.setString(7, endDate);
        preparedStatement.setString(8, membershipType);

        // Execute the query
        preparedStatement.executeUpdate();

        // Success message (optional)
        out.println("<p>Membership added successfully!</p>");

    } catch (Exception e) {
        out.println("<p>Error adding membership: " + e.getMessage() + "</p>");
    } finally {
        // Close connection (if used)
        if (preparedStatement != null) {
            preparedStatement.close();
        }
        if (connection != null) {
            connection.close();
        }
    }
%>

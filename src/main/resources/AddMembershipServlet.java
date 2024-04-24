import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/com.library.servlet.AddMembershipServlet")
public class AddMembershipServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String contactNo = request.getParameter("contactNo");
        String contactAddress = request.getParameter("contactAddress");
        String adharNo = request.getParameter("adharNo");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String membershipType = request.getParameter("membershipType");

        String url = "jdbc:mysql://localhost:3306/maintenance";
        String user = "root";
        String password = "Abhinav2024";

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            String sql = "INSERT INTO membership (first_name, last_name, contact_no, contact_address, adhar_no, start_date, end_date, membership_type) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, firstName);
            pstmt.setString(2, lastName);
            pstmt.setString(3, contactNo);
            pstmt.setString(4, contactAddress);
            pstmt.setString(5, adharNo);
            pstmt.setString(6, startDate);
            pstmt.setString(7, endDate);
            pstmt.setString(8, membershipType);

            int rowsInserted = pstmt.executeUpdate();
            if (rowsInserted > 0) {
                response.getWriter().write("Membership added successfully!");
            } else {
                response.getWriter().write("Failed to add membership.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
}

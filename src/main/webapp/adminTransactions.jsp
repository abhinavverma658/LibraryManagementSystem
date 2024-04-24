<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Transactions</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</head>
<body>

<%
// Database connection
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/booksDetails", "root", "Abhinav2024");
    stmt = conn.createStatement();

    // Fetch book names and authors for dropdown menus
    String bookQuery = "SELECT book_name FROM books";
    String authorQuery = "SELECT author_name FROM authors";
    rs = stmt.executeQuery(bookQuery);
    %>
    <script>
    var books = [];
    <% while (rs.next()) { %>
        books.push("<%= rs.getString("book_name") %>");
    <% } %>

    var authors = [];
    <% rs = stmt.executeQuery(authorQuery); %>
    <% while (rs.next()) { %>
        authors.push("<%= rs.getString("author_name") %>");
    <% } %>
    </script>
    <%
} catch (Exception e) {
    e.printStackTrace();
} finally {
    try {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>

<div class="container mt-5">
    <div class="row">
        <!-- Left Side Tabs -->
        <div class="col-md-3">
            <ul class="nav nav-pills flex-column" id="transactionTabs">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#checkAvailability">Is Book Available?</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#issueBook">Issue Book?</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#returnBook">Return Book?</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#payFine">Pay Fine?</a>
                </li>
                <!-- Add other tabs here -->
            </ul>
        </div>

        <!-- Right Side Content -->
        <div class="col-md-9">
            <div class="tab-content">

                <!-- Is Book Available Tab -->
                <div id="checkAvailability" class="tab-pane fade show active">
                 <h3>Is Book Available?</h3>
                                    <form id="checkAvailabilityForm">
                                        <div class="form-group">
                                            <label>Enter Book Name:</label>
                                            <select class="form-control" id="bookNameCheck">
                                                <script>
                                                    for (var i = 0; i < books.length; i++) {
                                                        document.write('<option>' + books[i] + '</option>');
                                                    }
                                                </script>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Enter Author:</label>
                                            <select class="form-control" id="authorCheck">
                                                <script>
                                                    for (var i = 0; i < authors.length; i++) {
                                                        document.write('<option>' + authors[i] + '</option>');
                                                    }
                                                </script>
                                            </select>
                                        </div>
                                        <button type="button" class="btn btn-primary" onclick="checkAvailability()">Check Availability</button>
                                    </form>
                    <!-- ... -->
                </div>
                <!-- ... Previous code ... -->



                <!-- Issue Book Tab -->
                <!-- ... Previous code ... -->

                <!-- Issue Book Tab -->
                <div id="issueBook" class="tab-pane fade">
                    <h3>Issue Book?</h3>
                    <form id="issueBookForm">
                        <div class="form-group">
                            <label>Enter Book Name:</label>
                            <select class="form-control" id="bookNameIssue">
                                <script>
                                    for (var i = 0; i < books.length; i++) {
                                        document.write('<option>' + books[i] + '</option>');
                                    }
                                </script>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Enter Author:</label>
                            <select class="form-control" id="authorIssue">
                                <script>
                                    for (var i = 0; i < authors.length; i++) {
                                        document.write('<option>' + authors[i] + '</option>');
                                    }
                                </script>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Issue Date:</label>
                            <input type="text" class="form-control datepicker" id="issueDate" placeholder="Select Issue Date">
                        </div>
                        <div class="form-group">
                            <label>Return Date:</label>
                            <input type="text" class="form-control datepicker" id="returnDate" placeholder="Select Return Date">
                        </div>
                        <div class="form-group">
                            <label>Remarks:</label>
                            <textarea class="form-control" id="remarks" rows="3"></textarea>
                        </div>
                        <button type="button" class="btn btn-success" onclick="submitIssueBook()">Issue Book</button>
                    </form>
                </div>

                <!-- ... Next code ... -->


                <!-- Add other tabs content here -->

                <!-- Return Book Tab -->
                <div id="returnBook" class="tab-pane fade">
                    <h3>Return Book?</h3>
                    <form id="returnBookForm">
                        <div class="form-group">
                            <label>Enter Book Name:</label>
                            <select class="form-control" id="bookNameReturn">
                                <!-- Populate with database data -->
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Enter Author:</label>
                            <select class="form-control" id="authorReturn">
                                <!-- Populate with database data -->
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Serial No.:</label>
                            <select class="form-control" id="serialNo">
                                <!-- Populate with database data -->
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Issue Date:</label>
                            <input type="text" class="form-control" id="issueDateReturn" readonly>
                        </div>
                        <div class="form-group">
                            <label>Return Date:</label>
                            <input type="text" class="form-control datepicker" id="returnDate" placeholder="Select Return Date">
                        </div>
                        <div class="form-group">
                            <label>Remarks:</label>
                            <textarea class="form-control" id="remarksReturn" rows="3"></textarea>
                        </div>
                        <button type="button" class="btn btn-success" onclick="confirmReturn()">Confirm</button>
                        <button type="button" class="btn btn-danger" onclick="cancelReturn()">Cancel</button>
                    </form>
                </div>
                <!-- finePay tab-->
                <!-- Pay Fine Tab -->
                <div id="payFine" class="tab-pane fade">
                    <h3>Pay Fine?</h3>
                    <form id="payFineForm">
                        <div class="form-group">
                            <label>Enter Book Name:</label>
                            <input type="text" class="form-control" id="bookNameFine">
                        </div>
                        <div class="form-group">
                            <label>Enter Author:</label>
                            <input type="text" class="form-control" id="authorFine">
                        </div>
                        <div class="form-group">
                            <label>Serial No.:</label>
                            <input type="text" class="form-control" id="serialNoFine">
                        </div>
                        <div class="form-group">
                            <label>Issue Date:</label>
                            <input type="text" class="form-control datepicker" id="issueDateFine" readonly>
                        </div>
                        <div class="form-group">
                            <label>Return Date:</label>
                            <input type="text" class="form-control datepicker" id="returnDateFine" readonly>
                        </div>
                        <div class="form-group">
                            <label>Actual Return Date:</label>
                            <input type="text" class="form-control datepicker" id="actualReturnDate" placeholder="Select Actual Return Date">
                        </div>
                        <div class="form-group">
                            <label>Fine Calculated:</label>
                            <input type="text" class="form-control" id="fineCalculated" value="0" readonly>
                        </div>
                        <div class="form-group">
                            <label>Fine Paid:</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="finePaid" id="finePaidYes" value="yes">
                                <label class="form-check-label" for="finePaidYes">
                                    Yes
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="finePaid" id="finePaidNo" value="no" checked>
                                <label class="form-check-label" for="finePaidNo">
                                    No
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Remarks:</label>
                            <textarea class="form-control" id="remarksFine" rows="3"></textarea>
                        </div>
                        <button type="button" class="btn btn-success" onclick="confirmPayFine()">Confirm</button>
                        <button type="button" class="btn btn-danger" onclick="cancelPayFine()">Cancel</button>
                    </form>
                </div>



            </div>
        </div>
    </div>

    <!-- Back and Logout Buttons -->
    <div class="mt-4">
        <button class="btn btn-secondary" onclick="goBack()">Back</button>
        <button class="btn btn-danger" onclick="logout()">Logout</button>
    </div>
</div>

<script>
// Datepicker Initialization
$(document).ready(function(){
    $('.datepicker').datepicker({
        format: 'dd/mm/yyyy',
        autoclose: true
    });
});

function submitIssueBook() {
    var bookName = $('#bookNameIssue').val();
    var author = $('#authorIssue').val();
    var issueDate = $('#issueDate').val();
    var returnDate = $('#returnDate').val();
    var remarks = $('#remarks').val();

    // AJAX call to submit form data to server
    $.ajax({
        url: 'issueBookServlet', // Replace with your servlet URL
        type: 'POST',
        data: {
            bookName: bookName,
            author: author,
            issueDate: issueDate,
            returnDate: returnDate,
            remarks: remarks
        },
        success: function(response) {
            alert(response);
            // Reset form fields
            $('#issueBookForm')[0].reset();
        },
        error: function(error) {
            alert('Error: ' + error);
        }
    });
}

// Add this JavaScript code after the previous JavaScript code in the same <script> tag

function checkAvailability() {
    var bookName = $('#bookNameCheck').val();
    var author = $('#authorCheck').val();

    // AJAX call to check book availability
    $.ajax({
        url: 'checkAvailabilityServlet', // Replace with your servlet URL
        type: 'POST',
        data: {
            bookName: bookName,
            author: author
        },
        success: function(response) {
            alert(response);
        },
        error: function(error) {
            alert('Error: ' + error);
        }
    });
}


function goBack() {
    window.location.href = "userHome.jsp";
}

function logout() {
    window.location.href = "adminLogin.jsp";

}

// Populate dropdown menus with database data
$(document).ready(function() {
    // Fetch book names
    $.ajax({
        url: 'fetchBooksServlet', // Replace with your servlet URL to fetch book names
        type: 'GET',
        success: function(books) {
            books.forEach(function(book) {
                $('#bookNameReturn').append('<option>' + book.bookName + '</option>');
            });
        }
    });

    // Fetch authors
    $.ajax({
        url: 'fetchAuthorsServlet', // Replace with your servlet URL to fetch authors
        type: 'GET',
        success: function(authors) {
            authors.forEach(function(author) {
                $('#authorReturn').append('<option>' + author.authorName + '</option>');
            });
        }
    });

    // Fetch serial numbers
    $.ajax({
        url: 'fetchSerialNosServlet', // Replace with your servlet URL to fetch serial numbers
        type: 'GET',
        success: function(serialNos) {
            serialNos.forEach(function(serialNo) {
                $('#serialNo').append('<option>' + serialNo.serialNo + '</option>');
            });
        }
    });

    // Fetch issue date
    $.ajax({
        url: 'fetchIssueDateServlet', // Replace with your servlet URL to fetch issue date
        type: 'GET',
        success: function(issueDate) {
            $('#issueDateReturn').val(issueDate);
        }
    });

    // Datepicker Initialization
    $('.datepicker').datepicker({
        format: 'dd/mm/yyyy',
        autoclose: true
    });
});

function confirmReturn() {
    var bookName = $('#bookNameReturn').val();
    var author = $('#authorReturn').val();
    var serialNo = $('#serialNo').val();
    var returnDate = $('#returnDate').val();
    var remarks = $('#remarksReturn').val();

    // TODO: Implement AJAX call to submit return book data to server and database
}

function cancelReturn() {
    // Reset form fields
    $('#returnBookForm')[0].reset();
}
// Datepicker Initialization
$(document).ready(function() {
    $('.datepicker').datepicker({
        format: 'dd/mm/yyyy',
        autoclose: true
    });

    // Set return date 15 days from issue date
    $('#issueDateFine').on('change', function() {
        var issueDate = new Date($('#issueDateFine').val());
        var returnDate = new Date(issueDate);
        returnDate.setDate(returnDate.getDate() + 15);
        $('#returnDateFine').datepicker('setDate', returnDate);
    });
});

function confirmPayFine() {
    var bookName = $('#bookNameFine').val();
    var author = $('#authorFine').val();
    var serialNo = $('#serialNoFine').val();
    var issueDate = $('#issueDateFine').val();
    var returnDate = $('#returnDateFine').val();
    var actualReturnDate = $('#actualReturnDate').val();
    var fineCalculated = $('#fineCalculated').val();
    var finePaid = $('input[name=finePaid]:checked').val();
    var remarks = $('#remarksFine').val();

    // TODO: Implement AJAX call to submit pay fine data to server and database
}

function cancelPayFine() {
    // Reset form fields
    $('#payFineForm')[0].reset();
    $('#fineCalculated').val('0');
    $('#finePaidNo').prop('checked', true);
}


</script>

</body>
</html>

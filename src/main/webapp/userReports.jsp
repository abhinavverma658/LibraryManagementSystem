<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reports</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Style for active tab */
        .nav-link.active {
            font-weight: bold;
        }
        /* Center align for logout button */
        .logout-btn {
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <!-- Home Button -->
    <div class="text-right">
        <a href="userHome.jsp" class="btn btn-primary">Home</a>
    </div>

    <!-- Tabs -->
    <div class="row mt-4">
        <div class="col-md-3">
            <ul class="nav flex-column nav-pills" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="books-tab" data-toggle="tab" href="#books" role="tab" aria-controls="books" aria-selected="true">Master List of Books</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="movies-tab" data-toggle="tab" href="#movies" role="tab" aria-controls="movies" aria-selected="false">Master List of Movies</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="memberships-tab" data-toggle="tab" href="#memberships" role="tab" aria-controls="memberships" aria-selected="false">Master List of Memberships</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="active-issues-tab" data-toggle="tab" href="#active-issues" role="tab" aria-controls="active-issues" aria-selected="false">Active Issues</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="overdue-returns-tab" data-toggle="tab" href="#overdue-returns" role="tab" aria-controls="overdue-returns" aria-selected="false">Overdue Returns</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pending-issue-requests-tab" data-toggle="tab" href="#pending-issue-requests" role="tab" aria-controls="pending-issue-requests" aria-selected="false">Pending Issue Requests</a>
                </li>
            </ul>
        </div>
        <div class="col-md-9">
            <div class="tab-content" id="myTabContent">
                <!-- Books Tab Content -->
                <div class="tab-pane fade show active" id="books" role="tabpanel" aria-labelledby="books-tab">
                    <!-- Content for Master List of Books -->
                    <h3>Master List of Books</h3>
                    <!-- Add your content here -->
                     <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Serial No.</th>
                                    <th>Name of Book</th>
                                    <th>Author Name</th>
                                    <th>Category</th>
                                    <th>Status</th>
                                    <th>Cost</th>
                                    <th>Procurement Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Sample data rows (Replace with actual data from your database) -->
                                <tr>
                                    <td>1</td>
                                    <td>Book A</td>
                                    <td>Author X</td>
                                    <td>Fiction</td>
                                    <td>Available</td>
                                    <td>&#8377 20</td>
                                    <td>2022-01-01</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Book B</td>
                                    <td>Author Y</td>
                                    <td>Non-Fiction</td>
                                    <td>Checked Out</td>
                                    <td>&#8377 25</td>
                                    <td>2021-12-15</td>
                                </tr>
                                <!-- Add more rows as needed -->
                            </tbody>
                        </table>
                </div>
                <!-- Movies Tab Content -->
                <div class="tab-pane fade" id="movies" role="tabpanel" aria-labelledby="movies-tab">
                    <!-- Content for Master List of Movies -->
                    <h3>Master List of Movies</h3>
                    <!-- Add your content here -->
                    <table class="table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Serial No.</th>
                                                        <th>Name of Movie</th>
                                                        <th>Author Name</th>
                                                        <th>Category</th>
                                                        <th>Status</th>
                                                        <th>Cost</th>
                                                        <th>Procurement Date</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!-- Sample data rows (Replace with actual data from your database) -->
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Book A</td>
                                                        <td>Author X</td>
                                                        <td>Fiction</td>
                                                        <td>Available</td>
                                                        <td>&#8377 20</td>
                                                        <td>2022-01-01</td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>Book B</td>
                                                        <td>Author Y</td>
                                                        <td>Non-Fiction</td>
                                                        <td>Checked Out</td>
                                                        <td>&#8377 25</td>
                                                        <td>2021-12-15</td>
                                                    </tr>
                                                    <!-- Add more rows as needed -->
                                                </tbody>
                                            </table>
                </div>
                <!-- Memberships Tab Content -->
                <div class="tab-pane fade" id="memberships" role="tabpanel" aria-labelledby="memberships-tab">
                    <!-- Content for Master List of Memberships -->
                    <h3>Master List of Memberships</h3>
                    <!-- Add your content here -->
                     <table class="table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Membership ID</th>
                                                        <th>Name of Member</th>
                                                        <th>Contact Number</th>
                                                        <th>Contact Address</th>
                                                        <th>Aadhar Card No</th>
                                                        <th>Start Date Of Membership</th>
                                                        <th>End Date of Membership</th>
                                                        <th>Status(Active/Inactive)</th>
                                                        <th>Amount Pending(Fine)</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!-- Sample data rows (Replace with actual data from your database) -->
                                                    <tr>
                                                        <td>0001</td>
                                                        <td>Abhinav Verma </td>
                                                        <td>9924133658</td>
                                                        <td>Plot No. 248, YogeshwarNagar,Kidana, Gandhidham, Gujarat</td>
                                                        <td>432641545135</td>
                                                        <td>25/04/2024</td>
                                                        <td>25/04/2025</td>
                                                        <td>Active</td>
                                                        <td>0</td>
                                                    </tr>
                                                     <tr>
                                                                    <td>1002</td>
                                                                    <td>Jane Doe</td>
                                                                    <td>0987654321</td>
                                                                    <td>Address 2</td>
                                                                    <td>9876-5432-1098</td>
                                                                    <td>2021-12-15</td>
                                                                    <td>2022-12-15</td>
                                                                    <td>Inactive</td>
                                                                    <td>0</td>
                                                                </tr>
                                                    <!-- Add more rows as needed -->
                                                </tbody>
                                            </table>
                </div>
                <!-- Active Issues Tab Content -->
                <div class="tab-pane fade" id="active-issues" role="tabpanel" aria-labelledby="active-issues-tab">
                    <!-- Content for Active Issues -->
                    <h3>Active Issues</h3>
                     <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Serial No. Book/Movie</th>
                                    <th>Name of Book/Movie</th>
                                    <th>Membership Id</th>
                                    <th>Date of Issue</th>
                                    <th>Date of Return</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Sample data rows (Replace with actual data from your database) -->
                                <tr>
                                    <td>1</td>
                                    <td>Book A</td>
                                    <td>1001</td>
                                    <td>2022-03-15</td>
                                    <td>2022-04-15</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Movie X</td>
                                    <td>1002</td>
                                    <td>2022-03-20</td>
                                    <td>2022-04-20</td>
                                </tr>
                                <!-- Add more rows as needed -->
                            </tbody>
                        </table>
                    <!-- Add your content here -->
                </div>
                <!-- Overdue Returns Tab Content -->
                <div class="tab-pane fade" id="overdue-returns" role="tabpanel" aria-labelledby="overdue-returns-tab">
                    <!-- Content for Overdue Returns -->
                    <h3>Overdue Returns</h3>
                    <!-- Add your content here -->
                    <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Serial No. Book</th>
                                    <th>Name of Book</th>
                                    <th>Membership Id</th>
                                    <th>Date of Issue</th>
                                    <th>Date of Return</th>
                                    <th>Fine Calculation</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Sample data rows (Replace with actual data from your database) -->
                                <tr>
                                    <td>1</td>
                                    <td>Book B</td>
                                    <td>1003</td>
                                    <td>2022-03-10</td>
                                    <td>2022-04-10</td>
                                    <td>$5</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Book C</td>
                                    <td>1004</td>
                                    <td>2022-03-05</td>
                                    <td>2022-04-05</td>
                                    <td>$10</td>
                                </tr>
                                <!-- Add more rows as needed -->
                            </tbody>
                        </table>
                </div>
                <!-- Pending Issue Requests Tab Content -->
                <div class="tab-pane fade" id="pending-issue-requests" role="tabpanel" aria-labelledby="pending-issue-requests-tab">
                    <!-- Content for Pending Issue Requests -->
                    <h3>Pending Issue Requests</h3>
                    <!-- Add your content here -->
                    <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Name of Book/Movie</th>
                                    <th>Membership Id</th>
                                    <th>Requested Date</th>
                                    <th>Request Fulfilled Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Sample data rows (Replace with actual data from your database) -->
                                <tr>
                                    <td>Book D</td>
                                    <td>1005</td>
                                    <td>2022-03-25</td>
                                    <td>-</td> <!-- Assuming request is not yet fulfilled -->
                                </tr>
                                <tr>
                                    <td>Movie Y</td>
                                    <td>1006</td>
                                    <td>2022-03-30</td>
                                    <td>2022-04-05</td>
                                </tr>
                                <!-- Add more rows as needed -->
                            </tbody>
                        </table>
                </div>
            </div>
        </div>
    </div>

    <!-- Logout Button -->
    <div class="logout-btn">
        <button class="btn btn-danger" onclick="logout()">Logout</button>
    </div>
</div>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
function logout() {
    // Redirect to Logout page or invalidate session
    window.location.href = "userlogout.jsp";
}
</script>

</body>
</html>

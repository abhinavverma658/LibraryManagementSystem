<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Maintenance</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
</head>
<body>

<div class="container mt-5">
    <div class="row">
        <!-- Membership -->
        <div class="col-md-4">
            <h4>Membership</h4>
            <button class="btn btn-success mb-2" onclick="showAddMembership()">Add</button>
            <button class="btn btn-warning mb-2" onclick="showUpdateMembership()">Update</button>
        </div>

        <!-- Membership Details Tab -->
        <div class="col-md-8">
            <div class="tab-content">
                <!-- Add Membership Tab -->
                <div class="tab-pane fade" id="addMembershipTab">
                    <!-- ... (same as before) ... -->
                    <h4>Add Membership</h4>
                                        <form id="addMembershipForm" action="addMembership.jsp">
                                            <div class="form-group">
                                                <label>First Name:</label>
                                                <input type="text" class="form-control" id="firstName">
                                            </div>
                                            <div class="form-group">
                                                <label>Last Name:</label>
                                                <input type="text" class="form-control" id="lastName">
                                            </div>
                                            <div class="form-group">
                                                <label>Contact No.:</label>
                                                <input type="text" class="form-control" id="contactNo">
                                            </div>
                                            <div class="form-group">
                                                <label>Contact Address:</label>
                                                <input type="text" class="form-control" id="contactAddress">
                                            </div>
                                            <div class="form-group">
                                                <label>Adhar No:</label>
                                                <input type="text" class="form-control" id="adharNo">
                                            </div>
                                            <div class="form-group">
                                                <label>Start Date:</label>
                                                <input type="text" class="form-control datepicker" id="startDate">
                                            </div>
                                            <div class="form-group">
                                                <label>End Date:</label>
                                                <input type="text" class="form-control datepicker" id="endDate">
                                            </div>
                                            <div class="form-group">
                                                <label>Membership:</label>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="membershipType" id="sixMonths" value="Six Months">
                                                    <label class="form-check-label" for="sixMonths">
                                                        Six Months
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="membershipType" id="oneYear" value="One Year">
                                                    <label class="form-check-label" for="oneYear">
                                                        One Year
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="membershipType" id="twoYears" value="Two Years">
                                                    <label class="form-check-label" for="twoYears">
                                                        Two Years
                                                    </label>
                                                    </div>
                                                    </div>
                                                    <button type="button" class="btn btn-success" onclick="confirmAddMembership()">Confirm</button>
                                                    <button type="button" class="btn btn-danger" onclick="cancelAddMembership()">Cancel</button>
                                                    </form>
                </div>

                <!-- Update Membership Tab -->
                <div class="tab-pane fade" id="updateMembershipTab">
                    <h4>Update Membership</h4>
                    <form id="updateMembershipForm">
                        <!-- Form Fields -->
                        <div class="form-group">
                            <label>Membership Number:</label>
                            <input type="text" class="form-control" id="membershipNumberUpdate">
                        </div>
                        <div class="form-group">
                            <label>Start Date:</label>
                            <input type="text" class="form-control datepicker" id="startDateUpdate">
                        </div>
                        <div class="form-group">
                            <label>End Date:</label>
                            <input type="text" class="form-control datepicker" id="endDateUpdate">
                        </div>
                        <div class="form-group">
                            <label>Membership Extn:</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="membershipExtn" id="sixMonthsUpdate" value="Six Months">
                                <label class="form-check-label" for="sixMonthsUpdate">
                                    Six Months
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="membershipExtn" id="oneYearUpdate" value="One Year">
                                <label class="form-check-label" for="oneYearUpdate">
                                    One Year
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="membershipExtn" id="twoYearsUpdate" value="Two Years">
                                <label class="form-check-label" for="twoYearsUpdate">
                                    Two Years
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Membership Remove:</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="membershipRemove" id="yesUpdate" value="Yes">
                                <label class="form-check-label" for="yesUpdate">
                                    Yes
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="membershipRemove" id="noUpdate" value="No">
                                <label class="form-check-label" for="noUpdate">
                                    No
                                </label>
                            </div>
                        </div>
                        <!-- Buttons -->
                        <button type="button" class="btn btn-success" onclick="confirmUpdateMembership()">Confirm</button>
                        <button type="button" class="btn btn-danger" onclick="cancelUpdateMembership()">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="row">
        <!-- Book/Movies -->
        <div class="col-md-4">
            <h4>Books/Movies</h4>
            <button class="btn btn-success mb-2" onclick="showAddBook_Movies()">Add</button>
            <button class="btn btn-warning mb-2" onclick="showUpdateBook_Movies()">Update</button>
        </div>
        <!-- Add Book/Movies Form -->
        <div class="col-md-8">
            <div id="addBookMoviesForm" style="display:none;">
                <h4>Add Book/Movies</h4>
                <form action="addBookMovies.jsp" method="post">
                    <div class="form-group">
                        <label>Book/Movies:</label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="bookOrMovie" id="book" value="Book" checked>
                            <label class="form-check-label" for="book">
                                Book
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="bookOrMovie" id="movie" value="Movie">
                            <label class="form-check-label" for="movie">
                                Movie
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Book/Movie Name:</label>
                        <input type="text" class="form-control" name="bookMovieName" required>
                    </div>
                    <div class="form-group">
                        <label>Date of Procurement:</label>
                        <input type="text" class="form-control datepicker" name="dateOfProcurement" required>
                    </div>
                    <div class="form-group">
                        <label>Quantity/Copies:</label>
                        <input type="number" class="form-control" name="quantity" value="1" required>
                    </div>
                    <button type="submit" class="btn btn-primary" onclick="confirmAddBook_Movies()">Confirm</button>
                    <button type="button" class="btn btn-secondary" onclick="cancelAddBook_Movies()">Cancel</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        function showAddBook_Movies() {
            document.getElementById('addBookMoviesForm').style.display = 'block';
        }

        function showUpdateBook_Movies() {
            // Logic to show update form
        }

        function cancelAddBook_Movies() {
            document.getElementById('addBookMoviesForm').style.display = 'none';
        }

        // Initialize datepicker
        $(document).ready(function() {
            $('.datepicker').datepicker({
                format: 'yyyy-mm-dd',
                autoclose: true
            });
        });
    </script>

</div>

    <!-- Logout Button -->
    <div class="row mt-5">
        <div class="col-md-12 text-center">
            <button class="btn btn-danger" onclick="logout()">Logout</button>
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
        $('.datepicker').datepicker({
            format: 'dd/mm/yyyy',
            autoclose: true
        });
    });

    function logout() {
        window.location.href = "logout.jsp";
    }

    function showAddMembership(){
               $('#updateMembershipTab').removeClass('show active');
               $('#addMembershipTab').addClass('show active');
               $('a[href="#addMembershipTab"]').tab('show');
    }

    function showUpdateMembership() {
            $('#addMembershipTab').removeClass('show active');
            $('#updateMembershipTab').addClass('show active');
            $('a[href="#updateMembershipTab"]').tab('show');
    }

    function confirmUpdateMembership() {
        // Collect form data
        var membershipNumber = $('#membershipNumberUpdate').val();
        var startDate = $('#startDateUpdate').val();
        var endDate = $('#endDateUpdate').val();
        var membershipExtn = $('input[name=membershipExtn]:checked').val();
        var membershipRemove = $('input[name=membershipRemove]:checked').val();

        // TODO: Implement AJAX call to update membership data in database

        // Hide the tab
        $('#updateMembershipTab').removeClass('show active');
    }

    function confirmAddMembership() {
      event.preventDefault(); // Prevent default form submission

      // Get form data
      var firstName = document.getElementById("firstName").value;
      var lastName = document.getElementById("lastName").value;
      var contactNo = document.getElementById("contactNo").value;
      var contactAddress = document.getElementById("contactAddress").value;
      var adharNo = document.getElementById("adharNo").value;
      var startDate = document.getElementById("startDate").value;
      var endDate = document.getElementById("endDate").value;
      var membershipType = document.querySelector('input[name="membershipType"]:checked').value;  // Get checked radio button value

      // Construct URL with query parameters
      var url = "addMembership.jsp?firstName=" + firstName + "&lastName=" + lastName + "&contactNo=" + contactNo + "&contactAddress=" + contactAddress + "&adharNo=" + adharNo + "&startDate=" + startDate + "&endDate=" + endDate + "&membershipType=" + membershipType;

      // Redirect to addMembership.jsp with the URL
      window.location.href = url;
    }


    function cancelUpdateMembership() {
        // Reset form fields
        $('#updateMembershipForm')[0].reset();
        // Hide the tab
        $('#updateMembershipTab').removeClass('show active');
    }


        function cancelAddMembership() {
            // Reset form fields
            $('#addMembershipForm')[0].reset();
        }
</script>

</body>
</html>

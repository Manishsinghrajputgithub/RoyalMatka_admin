<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script> -->
    <!-- <link href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet"> -->
    <!-- <script src="//cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script> -->
    <!-- <link rel="stylesheet" href="assets\css\style4.css"> -->
    <!-- <link href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="assets\css\style4.css">
    <script>
        $(document).ready(function() {
            var dataTable = $('.user-table-data').DataTable({
                "pageLength": 10,
                'aoColumnDefs': [{
                    'bSortable': false,
                    'aTargets': ['nosort'],
                }],
                // columnDefs: [{
                //     type: 'date-dd-mm-yyyy',
                //     aTargets: [5]
                // }],
                "aoColumns": [
                    null,
                    null,
                    null,
                    null,
                    null
                ],
                "order": false,
                "bLengthChange": false,
                "dom": '<"top">ct<"top"p><"clear">'
            });
            $("#filterbox").keyup(function() {
                dataTable.search(this.value).draw();
            });
        });
    </script>
</head>

<body>


    <!-- <section class="form">
        <form action="" class="form-search">
            <div class="form-group-user">
                <label for="">Username</label>
                <br>
                <input type="text" name="name" placeholder="username">
            </div>
            <div class="form-group-user">
                <label for="">Mobile No.</label>
                <br>
                <input type="number" name="mobile" placeholder="mobile">
            </div>
            <div class="form-group-user">
                <label for="">Ip Address</label>
                <br>
                <input type="number" name="IpAddress" placeholder="Ip Address">
            </div>
        </form>
    </section> -->



    <section class="input-form">
        <div class="main-datatable">
            <div class="user-table">
                <div class="d-flex">
                    <div class="add_flex">
                        <div class="searchInput">
                            <label type="email">Search:</label>
                            <input type="search" id="filterbox" placeholder=" ">
                        </div>
                    </div>
                </div>
                <div class="filtertable">
                    <table class="user-table-data" style="width:100%;">
                        <thead>
                            <tr>
                                <th style="min-width:10px;">ID</th>
                                <th style="min-width:15px;">download</th>
                                <th style="min-width:15px;">url</th>
                                <th style="min-width:10px;">created Date</th>
                                <th style="min-width:15px;">action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            include_once "../config/dbconnect.php";
                            $sql = "SELECT * from users";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                            ?>
                                    <tr class="user-data">
                                        <td><?= $row["user_id"] ?></td>
                                        <td><i class='bx bx-cloud-download'></i></td>
                                        <td><a href="#">https://www.youtube.com/watch?v=rEw7U4F42Gw</a></td>
                                        <td><?= $row["registered_at"] ?></td>
                                        <td><i class='bx bx-pencil'></i></td>
                                    </tr>
                            <?php

                                }
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</body>

</html>

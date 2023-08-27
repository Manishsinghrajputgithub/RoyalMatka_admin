<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script> -->
	<!-- <link href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet"> -->
	<!-- <script src="//cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script> -->
	<link rel="stylesheet" href="assets\css\style3.css">
	<link rel="stylesheet" href="assets\css\style4.css">
	<!-- <link href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css" rel="stylesheet"> -->
	<script>
		$(document).ready(function() {
			var dataTable = $('.user-table-data').DataTable({
				"pageLength": 10,
				'aoColumnDefs': [{
					'bSortable': false,
					'aTargets': ['nosort'],
				}],
				// columnDefs: [{
				// 	type: 'date-dd-mm-yyyy',
				// 	aTargets: [5]
				// }],
				"aoColumns": [
					null,
					null,
					null,
					null,
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


	<section class="form">
		<form action="" class="form-search">
			<div class="form-win">
				<label for="">Date</label>
				<br>
				<input type="date" name="date" placeholder="">
			</div>
			<div class="form-win ">
				<label for="">Game Name</label>
				<br>
				<select name="game name" id="game name" class="form-control">
					<option value="">Enter name</option>
					<option value=""></option>
					<option value=""></option>
				</select>
			</div>
			<div class="form-win ">
				<label for="">Open Pana</label>
				<br>
				<select name="open pana" id="open pana" class="form-control">
					<option value="">Select Option</option>
					<option value=""></option>
					<option value=""></option>
				</select>
			</div>
			<div class="form-win-btn ">
				<button class="get">Get</button>
				<button class="clear">Clear</button>
			</div>
		</form>
	</section>



	<section class="input-form">
		<div class="main-datatable">
			<div class="user-table">
				<div class="d-flex">
                <button class="primary">Total Bid Amount:30</button><button class="primary">Total Winning Amount:17</button>
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
								<th style="min-width:10px;">S.No</th>
								<th style="min-width:15px;">Date</th>
                                <th style="min-width:15px;">username</th>
								<th style="min-width:10px;">Mobile No</th>
								<th style="min-width:15px;">Game Name</th>
								<th style="min-width:10px;">Game Type</th>
                                <th style="min-width:10px;">pana</th>
                                <th style="min-width:10px;">result</th>
                                <th style="min-width:10px;">points</th>
							</tr>
						</thead>
						<tbody>
							<?php
							include_once "../config/dbconnect.php";
							$sql = "SELECT * from starline_prediction";
							$result = $conn->query($sql);

							if ($result->num_rows > 0) {
								while ($row = $result->fetch_assoc()) {
							?>
									<tr class="user-data">
										<td><?= $row["S.No"] ?></td>
										<td><?= $row["date"] ?></td>
                                        <td><?= $row["username"] ?></td>
										<td><?= $row["contact_no"] ?></td>
										<td><?= $row["game_name"] ?></td>
										<td><?= $row["game_type"] ?></td>
                                        <td><?= $row["pana"] ?></td>
                                        <td><?= $row["result"] ?></td>
                                        <td><?= $row["points"] ?></td>
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
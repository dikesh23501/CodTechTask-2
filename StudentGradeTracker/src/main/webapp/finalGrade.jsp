
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Final grade</title>
<link rel="icon" type="image/x-icon" href="icon.png">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>

	<div class="container  p-3 mt-2">
		<div class="row">
			<div class="col-md-6 offset-md-3">

				<div class="card paint-card">
					<div class="card-body">
						<div class="text-center ">
							<p class="text-center fs-1">Student Grade Tracker</p>
							<img alt="image not found" src="GradeLogo.png" width="25%"
								height="100px">
                             <%
                             String collegeName=(String)session.getAttribute("collageName");
                             String studentName=(String)session.getAttribute("studentName");
                             String grade=(String)session.getAttribute("grade");
                             String gradeDesc=(String)session.getAttribute("gradeDesc");
                             double totalMark=(double)session.getAttribute("totalMark");
                             double totalPercentage=(double)session.getAttribute("totalPercentage");
                             Map<String,Double> marks=(Map<String,Double>)session.getAttribute("marks");
                             
                              %>
							<form action="" method="post">

								<div class="row mb-3 mt-2  ">
									<label for="inputEmail3" class="col-sm-3 col-form-label fw-bold ">Name of Student</label>
									<div class="col-sm-8">
										<input type="text" name="name" value="<%=studentName%>" readonly="readonly" class="form-control border border-info" id="inputEmail3">
									</div>
								</div>
								
								<div class="row mb-3 mt-2 ">
									<label for="inputEmail3" class="col-sm-3 col-form-label fw-bold">Name of College</label>
									<div class="col-sm-8">
										<input type="text" name="college" value="<%=collegeName%>" readonly="readonly" class="form-control border border-info" id="inputEmail3">
									</div>
								</div>
								
								
								
								<p class="fs-4 text-start">Enter marks/grades of subject in below boxes</p>

                                <div class="row mb-3 mt-2 ">
									<label for="inputEmail3" class="col-sm-3 col-form-label fw-bold text-start">ENGLISH</label>
									<div class="col-sm-8">
										<input type="number" name="english" value="<%=marks.get("english")%>" readonly="readonly" class="form-control border border-info" id="inputEmail3">
									</div>
								</div>
								<div class="row mb-3 mt-2 ">
									<label for="inputEmail3" class="col-sm-3 col-form-label fw-bold text-start">MIL ODIA</label>
									<div class="col-sm-8">
										<input type="number" name="odia"  value="<%=marks.get("odia")%>" readonly="readonly" class="form-control border border-info" id="inputEmail3">
									</div>
								</div>
								<div class="row mb-3 mt-2 ">
									<label for="inputEmail3" class="col-sm-3 col-form-label fw-bold text-start">PHYSICS</label>
									<div class="col-sm-8">
										<input type="number" name="physics" value="<%=marks.get("physics")%>" readonly="readonly"  class="form-control border border-info" id="inputEmail3">
									</div>
								</div>
								<div class="row mb-3 mt-2 ">
									<label for="inputEmail3" class="col-sm-3 col-form-label fw-bold text-start">CHEMISTRY</label>
									<div class="col-sm-8">
										<input type="number" name="chemistry"  value="<%=marks.get("chemistry")%>" readonly="readonly" class="form-control border border-info" id="inputEmail3 text-start">
									</div>
								</div>
								<div class="row mb-3 mt-2 ">
									<label for="inputEmail3" class="col-sm-3 col-form-label fw-bold text-start">MATHEMATICS</label>
									<div class="col-sm-8">
										<input type="number" name="mathematics" value="<%=marks.get("mathematics")%>" readonly="readonly" class="form-control border border-info" id="inputEmail3">
									</div>
								</div>
								<div class="row mb-1 mt-2 ">
									<label for="inputEmail3" class="col-sm-3 col-form-label fw-bold text-start">INFORMATION TECH.</label>
									<div class="col-sm-8 ">
										<input type="number" name="It" value="<%=marks.get("it")%>"class="form-control border border-info" readonly="readonly" id="inputEmail3">
									</div>
								</div>
								<table class="table">
								         <thead>
								             <tr>
								                <th>Total Marks</th>
								                <th>Total Persentage %</th>
								                <th>Grade</th>
								                <th>Description</th>
								             </tr>
								         </thead>  
								         <tbody>
								                  <tr class="fw-bold bg-info">
								                     <td><%=totalMark %></td>
								                     <td><%=String.format("%.1f", totalPercentage) %>%</td>
								                     <td><%=grade %></td>
								                     <td><%=gradeDesc %></td>
								                  </tr>
								         </tbody>
								
								</table>
							</form>
						</div>




					</div>

				</div>


			</div>

		</div>




	</div>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>

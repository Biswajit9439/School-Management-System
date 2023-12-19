<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../components/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body style="background-color: yellow">

	<%@ include file="../components/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Login Principle</p>




						<%
						String st = (String) session.getAttribute("ready");
						if (st != null) {
						%>
						<p class="fs-4 text-center text-sucess"><%=st%>

							<%
							session.removeAttribute("ready");

							}
							%>

							<%
							String str = (String) session.getAttribute("sucess");
							if (str != null) {
							%>
						
						<p class="fs-4 text-center text-sucess"><%=str%>

							<%
							session.removeAttribute("sucess");

							}

							String str2 = (String) session.getAttribute("fail");
							if (str2 != null) {
							%>
						
						<p class="fs-4 text-center text-sucess"><%=str2%>

							<%
							session.removeAttribute("fail");

							}
							%>
						
						<form action="../login_principle" method="post">
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input
									name="email" type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="password" class="form-control" required>
							</div>



							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
						</form>

						<p class="fs-4">
							Forgot password ?<a href="principle_forgot_password.jsp"
								class="text-decoration-none text-success">Click here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
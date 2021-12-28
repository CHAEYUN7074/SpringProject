<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	function alarm()
	{
		var toastTrigger = document.getElementById('liveToastBtn');
		var toastLiveExample = document.getElementById('liveToast');
		if (toastTrigger)
		{
			toastTrigger.addEventListener('click', function()
			{
				var toast = new bootstrap.Toast(toastLiveExample)

				toast.show();
			});
		}
	}
</script>
</head>
<body>

	<div>
		<button type="button" class="btn btn-primary" id="liveToastBtn"
			onclick="alarm()">Show live toast</button>

		<div class="toast" role="alert" aria-live="assertive"
			aria-atomic="true">
			<div class="toast-header">
				<img src="..." class="rounded me-2" alt="..."> <strong
					class="me-auto">Bootstrap</strong> <small>11 mins ago</small>
				<button type="button" class="btn-close" data-bs-dismiss="toast"
					aria-label="Close"></button>
			</div>
			<div class="toast-body">Hello, world! This is a toast message.
			</div>
		</div>


	</div>

</body>
</html>
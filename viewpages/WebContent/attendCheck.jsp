<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Employees List</title>

<style>
@import
	url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')
	;

.row p {
	font-size: 10px;
	margin-left: 3vh;
}

.row {
	margin-left: 10%;
	margin-top: 10%;
}

.modal-footer {
	display: flex;
	flex-wrap: wrap;
	flex-shrink: 0;
	align-items: center;
	justify-content: center;
	padding: .75rem;
	border-top: 0px solid #dee2e6;
	border-bottom-right-radius: calc(.3rem - 1px);
	border-bottom-left-radius: calc(.3rem - 1px);
	padding: .75rem;
}

.btn-secondary {
	color: #fff;
	background-color: #6c757d;
	border-color: #6c757d;
	margin-right: 7vh;
}

.circle {
	width: 80px;
	height: 80px;
	border-radius: 50%;
	background: lightgray;
}
</style>
</head>
<body>


	<!-- modal button -->
	<div>
		<a href="#" id="modal1" class="btn btn-success btn-sm"
			data-bs-toggle="modal" data-bs-target="#employee_details1">실제 참여자
			체크</a>
	</div>


	<!-- Modal -->
	<!-- 평가 창 -->

	<div class="modal fade" id="employee_details1" tabindex="-1"
		aria-labelledby="employee_details1" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">모임에 참여한 동아리원을
						체크해주세요!</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="닫기"></button>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<a href="#">
							<div class="circle"></div>
							<p>닉네임</p>
						</a>
					</div>
					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<a href="#">
							<div class="circle"></div>
							<p>닉네임</p>
						</a>
					</div>
					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<a href="#">
							<div class="circle"></div>
							<p>닉네임</p>
						</a>
					</div>
					<!-- /.col-lg-4 -->
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-lg-4">
						<a href="#">
							<div class="circle"></div>
							<p>닉네임</p>
						</a>
					</div>

					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<a href="#">
							<div class="circle"></div>
							<p>닉네임</p>
						</a>
					</div>

					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<a href="#">
							<div class="circle"></div>
							<p>닉네임</p>
						</a>
					</div>
				</div>
				<!-- /.row -->

			</div>



		</div>
	</div>


	<!-- 모달창 관련 js -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
		integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"
		integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/"
		crossorigin="anonymous"></script>

	<!-- 체크 시 변경 js	 -->
	<script src="https://code.jquery.com/jquery-3.6.0.slim.js"></script>
	"
	<script type="text/javascript">
		/* 		$(function()
		 {
		 $('.bd-placeholder-img rounded-circle').click(function()
		 {
		 $('.btn_word').show();
		 });
		 $('.btn_hide').click(function()
		 {
		 $('.btn_word').hide();
		 });
		 }); */
		 
		 
		 
		 
		 
/* 		$(document).ready(function()
		{
			$('.circle').click(function()
			{
				$(this).css(
				{
					"background" : "orange"
				});
			})

		}); */
		 

			
		$(document).ready(function()
				{	
			
			$(".circle").click(function(){
				
				const color = $(".circle").css("background")
				
				if(color == "lightgray")
				{
					$("this").css("background" , "orange");
				} else{
					$("this").css("background" , "lightgray");
				});
			})

		}
			
				/* 안돼....왜 안돼...... */
		
			
			
			//제이쿼리
/* 			
	
			const color = $(.circle).css("background");
			
			
			$(document).ready(function(){
				if(color === "lightgray")
				{
			  		$('.circle').css({"background":"lightgray"});
			    } else {
			    	$('.circle').css({"background":"orange"});
			    }
			}); */
			
    </script>




</body>
</html>
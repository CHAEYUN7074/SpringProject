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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>B:CLE</title>
<!-- <link rel="stylesheet" href="css/main.css"> -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style>
@import
	url('https://fonts.googleapis.com/css?family=Exo+2|Noto+Sans+KR&display=swap')
	;

body {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	font-weight: bold;
	margin: 0px;
	font-weight: bold;
}

.list{
display : flex;
margin: 5vh 30vh 0vh 30vh; 
}
.form_upper {
	margin: 0vh 30vh 0vh 30vh;
	height: 70%;
	display: flex;
	border: 3px solid orange;
	border-radius: 10px;
}

.firstinfo {
	height: 80%;
	width: 40%;
	padding: 5vh;
}

.secondinfo {
	padding: 5vh 5vh 5vh 1vh;
	display: flex;
}

.thirdinfo {
	height: 80%;
	width: 40%;
	padding: 5vh;
	background-color : gray;
}


.info {
	display: flex;
}

.input_info {
	border: 1px solid black;
}


.form_upper p {
	font-size: 14px;
	font-weight: bold;
}

.info {
	display: flex;
}

.input_info {
	border: 1px solid black;
}

.form-select {
	display: block;
	width: 15%;
	padding: .375rem 2.25rem .375rem .75rem;
	-moz-padding-start: calc(0.75rem - 3px);
	font-size: 1rem;
	font-weight: 400;
	line-height: 1;
	color: #212529;
}

.form-control {
	display: block;
	width: 100%;
	padding: .375rem .75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: .25rem;
}

.list .form-control {
	display: block;
	width: 30%;
	padding: .375rem .75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: .25rem;
}
.form {
	display: flex;
	margin: 5vh 30vh 0vh 30vh;
}

.form .row {
	margin: 0vh 1vh 0vh 0vh;
	display: flex;
}

.form .form-control {
	display: block;
	width: 50%;
	padding: .375rem .75rem;
	font-size: 0.8rem;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

.form .col-form-label {
	padding-top: calc(.375rem + 1px);
	padding-bottom: calc(.375rem + 1px);
	padding-leftL: 0px;
	margin: 0px;
	font-size: inherit;
	line-height: 1.5;
	width: max-content;
}

.secondinfo .col-sm-10 {
	flex: 0 0 auto;
	width: 50%;
	height: fit-content;
	margin-bottom : 10px;
}

.secondinfo .row{
	margin: 0vh;
	    padding-left: 3px;
}


    
.secondinfo .mb-3 {
    margin: 0vh -12vh 0vh 0vh;
    width : 100%
}

.weather{
display:flex;
margin : 0px 0px 5vh 10vh;
height : 30%;
width : 50%;
}

.map{
margin : 0vh;
height : 50%;
width : 100%;
background-color : gray;
}

@keyframes weatherAppear {
    0% {
        visibility: hidden;
        opacity: 0;
    }

    100% {
        visibility: visible;
        opacity: 1;
    }
}

.weather__box1 {
    position: relative;
    margin: 0 auto;
/*         width : 50%; */
        height : 30%;
}

.weather__icon {
    width: 100px;
    height: 100px;
    margin: 0 auto;
    padding: 0;
}

.weather__box2 {
    margin: 0px 1vw;
/*     width : 50%; */
    height : 30%
}

.weather__temperature {
    width: 50%;
    font-size: 50px;
    font-weight: 900;
    text-align: center;
    line-height: 100px;
    font-stretch: 50%;
    font-family: 'Nanum Pen Script', cursive;
    margin-bottom: -1vh;
}

.weather__location{
}
.weather__description{
}
.weathercontents{
width : 10vh;
height : 20vh;
background-color : gray;
}

.localinfo{
width : 100%;
margin : 0vh;
}

.submitButton{
background-color : orange;
}

.limit{
display : flex;
margin : 0vh 30vh 0vh 30vh;
}

</style>
<body>
 <form method="post">
	<div class="form">
		<select class="form-select form-select-lg mb-3"
			aria-label=".form-select-lg example">
			<option selected>모임유형</option>
			<option value="1">정모</option>
			<option value="2">반짝모임</option>
		</select>
		<div class="row">
			<div class="row mb-3">
				<label for="colFormLabel" class="col-sm-2 col-form-label">개설일</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="colFormLabel"
						placeholder="col-form-label">
				</div>
			</div>

			<div class="row mb-3">
				<label for="colFormLabel" class="col-sm-2 col-form-label">주최자</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="colFormLabel"
						placeholder="col-form-label">
				</div>
			</div>
		</div>
	</div>

	<div class="form_upper">
		<div class="firstinfo">

			<p>모임내용</p>
			<textarea cols="40" rows="5">
            내용을 입력하세요
        </textarea>
			<p>대표사진</p>
			<div class="image-show" id="image-show"></div>
			<form method="post" enctype="multipart/form-data">
				<span id=upload class="btn1"> <label for="chooseFile">
						👉 이미지 선택하기 </label>
				</span> <input type="file" id="chooseFile" name="chooseFile"
					accept="image/*" onchange="loadFile(this)">
			</form>
			<div class="fileContainer">
				<div class="fileInput">
					<span>FILE NAME:</span> <span id="fileName"></span>
				</div>
				<div class="buttonContainer">
					<button type="button" class="submitButton" id="submitButton">등록</button>
				</div>
				
			</div>
		</div>
		<div class="secondinfo">
			<div class="row mb-3">
				<label for="colFormLabel" class="col-sm-2 col-form-label">참가비</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="colFormLabel"
						placeholder="col-form-label">
				</div>
				<p></p>
				<label for="colFormLabel" class="col-sm-2 col-form-label">일자</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="colFormLabel"
						placeholder="col-form-label">
				</div>
				<p></p>
				<label for="colFormLabel" class="col-sm-2 col-form-label">일시</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="colFormLabel"
						placeholder="col-form-label">
				</div>
				<p></p>
				<label for="colFormLabel" class="col-sm-2 col-form-label">상세위치</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="colFormLabel"
						placeholder="col-form-label">
				</div>
			</div>
			<div class = localinfo>
			<section class="weather">
                <label for="weather"></label>
                        <div class="weather__box1">
                            <img class="weather__icon">
                            <div class="weather__description"></div>
                        </div>
                        <div class="weather__box2">
                            <div class="weather__temperature"></div>
                            <div class="weather__location">
                            </div>
                        </div>

            </section>
            <section class="map">
            지도연동
            </section>
		</div>
		</div>
		
	</div>

<div class = "list">
  <span>최소인원<span></span> <input type="number" name="min"></span>
  <span>최대인원<span></span>  <input type="number" name="max"></span>
</div>
	
</form>
<!-- ================= -->

<!-- =============================== -->
    <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
</body>
<script>
	var submit = document.getElementById('submitButton');
	submit.onclick = showImage; //Submit 버튼 클릭시 이미지 보여주기

	function showImage()
	{
		var newImage = document.getElementById('image-show').lastElementChild;
		newImage.style.visibility = "visible";

		document.getElementById('image-upload').style.visibility = 'hidden';

		document.getElementById('fileName').textContent = null; //기존 파일 이름 지우기
	}

	function loadFile(input)
	{
		var file = input.files[0];

		var name = document.getElementById('fileName');
		name.textContent = file.name;

		var newImage = document.createElement("img");
		newImage.setAttribute("class", 'img');

		newImage.src = URL.createObjectURL(file);

		newImage.style.width = "50%";
		newImage.style.height = "30%";
		newImage.style.visibility = "hidden"; //버튼을 누르기 전까지는 이미지 숨기기
		newImage.style.objectFit = "contain";

		var container = document.getElementById('image-show');
		container.appendChild(newImage);
	};
	
	
	//날씨
	const API_KEY = "64c29b1d88f4e14a4e891b37448daadc";
	const iconSelect = document.querySelector(".weather__icon")
	const Weather__description = document.querySelector(".weather__description")
	const weather__temperature = document.querySelector(".weather__temperature")
	const Weather__location = document.querySelector(".weather__location")
	const WeatherShowing = document.querySelector("section.weather")

	function saveCoord(coordObj) {
    sessionStorage.setItem("coords", JSON.stringify(coordObj))
	}

	function handleGeoSuccess(position) {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;
    const coordObj = {
        latitude,
        longitude
    };
    saveCoord(coordObj);
    getWeather(latitude, longitude);
	}

	function handleGeoError() {
    iconSelect.setAttribute("src", "icons/unknown.png")
    Weather__description.innerText = `???`;
    weather__temperature.innerText = "-℃"
    Weather__location.innerText = "위치";
    Weather__humidity.innerText = "위치모름"
	}

function getGeolocation() {
    navigator.geolocation.getCurrentPosition(handleGeoSuccess, handleGeoError, {
        enableHighAccuracy: true
    });
	}

	function getWeather(lat, lon) {
    let WEATHER_URL = `http://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric&lang={kr}`

    if (location.protocol === 'http:') {
        WEATHER_URL = `http://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric&lang={kr}`
    } else {
        WEATHER_URL = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric&lang={kr}`
    }
    fetch(WEATHER_URL)
        .then(function (response) {
            return response.json();
        })
        .then(function (json) {
            const description = json.weather[0].description;
            const icon = json.weather[0].icon;
            const temperature = json.main.temp;
            const currentLocation = json.name;
            const errorCode = json.cod;
            if (errorCode === "401") {
                iconSelect.setAttribute("src", "icons/unknown.png")
                Weather__description.innerText = `???`;
                weather__temperature.innerText = "-℃"
                Weather__location.innerText = "위치";
                Weather__humidity.innerText = "API 불러오기 실패"
            } else {
                iconSelect.setAttribute("src", `icons/${icon}.png`);
                Weather__description.innerText = `${description}`;
                weather__temperature.innerText = `${temperature.toFixed(1)}℃`;
                Weather__location.innerText = `${currentLocation}`;
            }
        });
}

function loadCoord() {
    const loadedCoords = sessionStorage.getItem("coords");
    if (loadedCoords === null) {
        getGeolocation();
    } else {
        const parsedCoords = JSON.parse(loadedCoords);
        getWeather(parsedCoords.latitude, parsedCoords.longitude);
    }
}

WeatherShowing.addEventListener("click", loadCoord);
</script>

</html>
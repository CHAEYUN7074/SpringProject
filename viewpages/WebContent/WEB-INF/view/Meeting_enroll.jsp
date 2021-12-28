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

.upper {
   display: flex;
   margin: 5vh 25vh 0vh 25vh;
   padding-left: 5%;
   padding-right: 5%;
   padding-top: 5%;
   background-color: white;
}

.upper>* {
   margin-right: 5vh;
}

.intro {
   width: 40vh;
}

.bottom {
   display: flex;
   padding: 5%;
   margin: 0vh 25vh 0vh 25vh;
   background-color: white;
}

.photo {
   margin: 0vh 30vh 5vh 20vh;
}

.upper>select, .upper>input {
   margin-left: 1vh;
   border: 3px solid #D9D9D9;
   border-radius: 30px;
}

.left {
   padding-left: 5%;
   padding-right: 5%;
}

.left>input {
   border: 3px solid #D9D9D9;
   background: #D9D9D9;
   border-radius: 30px;
   margin-bottom: 5vh;
   margin-left: 2vh;
}

section.main {
   width: 100%;
   height: 100%;
   position: relative;
   z-index: 1;
}

section.main::after {
   width: 100%;
   height: 100%;
   content: "";
   background: url(images/hobby1.jpg) no-repeat center/cover;
   position: absolute;
   top: 0;
   left: 0;
   z-index: -1;
   opacity: 0.5;
   top: 0;
   left: 0;
}

.main>h2 {
   margin-left: 25vh;
   padding-top: 3%;
}

#min, #max {
   width: 8vh;
}

.bottom2{
margin: 0vh 25vh 10vh 25vh;
display:flex;
background-color:white;
}

.right{
background-color:white;
width:92vh;
padding-left :5%;
padding-right :5%;
}

.enroll {
   margin-top: -8vh;
   padding-bottom : 5%;
   margin-left: 45%;
   margin-right: auto;
}




/* 사진업로드 관련 */
#att_zone {
   width: 60vh;
   min-height: 150px;
   padding: 10px;
   border: 1px dotted #00f;
   margin-top:3vh;
   margin-bottom:3vh;
}

#att_zone:empty:before {
   content: attr(data-placeholder);
   color: #999;
   font-size: .9em;
}


/* 날씨&지도 */
.weather{
display:flex;
margin : 5vh 0px 5vh 5vh;
height : 30%;
width : 50%;
}
.map{
margin : 0vh;
height : 30vh;
width : 30vh;
background-color : gray;
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
/* .weather__location{
}
.weather__description{
} */
.weathercontents{
width : 10vh;
height : 20vh;
background-color : lightgray;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=cp%>/js/ajax.js"></script>

<script type="text/javascript">
   $(document).ready(function()   // 페이지가 로드됐을 때 제이쿼리 실행?
    {
       
        // 직원 추가 버튼이 클릭되었을 때 수행해야 할 코드 처리
        $("#submitBtn").click(function()
        {
           //alert(  $("#beeTime2").val()  );
           
           // 오늘 날짜 구하기
           var today = new Date();

           /* 
         var year = today.getFullYear();
         var month = ('0' + (today.getMonth() + 1)).slice(-2);
         var day = ('0' + today.getDate()).slice(-2);

         var dateString = year + '-' + month  + '-' + day;
          */
          
          // 선택한 날짜를 date형으로 변환
         const str = $("#beeTime1").val();

         const strArr = str.split('-');

         const date = new Date(strArr[0], strArr[1]-1, strArr[2]);
         
         //alert(today);
         //alert( date );
         
           
          if($("#typeId").val()=="0")
          {
             alert("모임 유형을 선택해주세요!");
             /* $("#err").html("모임 종류를 선택해주세요!");
            $("#err").css("display", "inline"); */
            return;
          }
         
         //alert( typeof $("#min").val()  );
         
         if( date.getTime() < today.getTime() )
         {
            alert("지난 날짜는 선택할 수 없습니다.");
            return false;
         }
         
         if( Number($("#min").val()) < 3)   
         {
            alert("최소 인원은 3명 이상으로 설정해야 합니다.");
            return false;            //-- submit 액션 처리 중단
         }
         
         if( Number($("#min").val()) < 3)   
         {
            alert("최소 인원은 3명 이상으로 설정해야 합니다.");
            return false;            //-- submit 액션 처리 중단
         }
         
         if( Number($("#max").val()) < Number($("#min").val() ))   
         { 
            alert("최대 인원은 최소인원보다 크게 설정해야 합니다.");
            return false;            //-- submit 액션 처리 중단
         } 
         
         
         
          /*    
            // 테스트 
            //alert($("#minBasicPay").val());         //--(X)
            //alert($("#minBasicPay").text());         //--(○)
            
            // 최소 기본급에 대한 유효성 검사
            */
          
            // 폼 submit 액션 처리 수행
            $("#beeForm").submit();
        
           });
      
           
       });
            
</script>
<body>

<!--  
[모임 등록 페이지]
0. 동아리원만 개설할 수 있음(이 페이지 넘어오기 전에 캘린더에서 처리)(○)
1. 모든 입력 칸 빈 칸 없이(○)
2. 지난 날짜는 선택하지 못하게(○)
3. 정모날짜에 반짝모임 신청하지 못하도록 모델에서 처리
4. 운영진이면 정모랑 반짝모임 다 보이고 동아리원이면 반짝모임만 보이게(나중에 하기)
5. 참가비 최소 0, 숫자로만 입력 (○)
6. 작성자 닉네임 받아오기 (○)
7. 모임 인원은 동아리 최대제한 인원 수 이하로 설정하기(○)
-->
   <div>
      <c:import url="subHeader.jsp"></c:import>
   </div>
   <section class="main">
   
   <form action="beeinsert.action?cid=${cid }" method="post" id="beeForm">
      
      <h2>모임개설</h2>
      <div class="upper">
         <select class="select" id="typeId" name="typeId">
            <option value="0" selected>모임유형</option>
            
            <!-- 운영진이면 정모랑 반짝모임 다 보이고 동아리원이면 반짝모임만 보이게 -->
            
            <option value="1">정모</option>
            <option value="2">반짝모임</option>
            
            
         </select> 모임 제목<input type="text" id="title" name="title" required="required"> 주최자 : ${nickname}
      </div>
      <div class="bottom">
         <div class="intro">
            <h3>모임소개</h3>
            <textarea cols="50" rows="10" id="content" name="content" required="required"></textarea>
         </div>
   
             <%-- <div class="photo">
               <div id="bbs">
                  <form action="">
                     <div id='image_preview'>
                        <h3>사진 올리기</h3>
                        <input type='file' id='btnAtt' multiple='multiple' />
                        <div id='att_zone'
                           data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요.'></div>
                     </div>
                     <div id="bbsCreated_footer">
                        <input type="button" value="등록하기" class="btn2" /> <input
                           type="button" value="취소하기" class="btn2"
                           onclick="javascript:location.href='<%=cp%>/beePicList.jsp'" />
                     </div>
                  </form>
               </div> 
   
            </div> --%>
         </div>
         
         <div class="bottom2">
            <div class="left">
               <h3>자세히 알려주세요</h3>
               <p>※회원들이 정확히 알고 참여할 수 있도록 구체적인 내용을 기재해주세요.</p>
               <br></br> 참가비 <input type="number" min="0" id="fee" name="fee" required="required"> 
               <br> 모임일 <input type="date" id="beeTime1" name="beeTime1" required="required"> 
               <br> 모임시간<input type="time" id="beeTime2" name="beeTime2" required="required"><br>
               모임장소<input type="text" id="location" name="location" required="required"><br> 
               인원<input type="number" id="min" name="min" placeholder="최소인원" required="required"> - 
                     <input type="number" id="max" name="max" max="${club.max }" placeholder="최대인원" required="required"><br>
      
            </div>
      
      
            <!-- <div class="right">
               <section class="weather">
                  <label for="weather"></label>
                  <div class="weather__box1">
                     <img class="weather__icon">
                     <div class="weather__description"></div>
                  </div>
                  <div class="weather__box2">
                     <div class="weather__temperature"></div>
                     <div class="weather__location"></div>
                  </div>
      
               </section>
               <section class="map">지도연동</section>
               
            </div> -->
         </div>
   
      <div class="enroll">
         <button id="submitBtn" type="button" class="btn btn-warning">등록</button>
         <button type="button" class="btn btn-secondary">취소</button>
      </div>
   
      <input type="hidden" id="cid" value="${cid }">
   </form>
   
   </section>

   <div class="right"></div>

   <div></div>
   <c:import url="footer.jsp"></c:import>

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
        latitude
        , longitude
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



/* 사진업로드 */
<script type="text/javascript">
( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
  imageView = function imageView(att_zone, btn){

    var attZone = document.getElementById(att_zone);
    var btnAtt = document.getElementById(btn)
    var sel_files = [];
    
    // 이미지와 체크 박스를 감싸고 있는 div 속성
    var div_style = 'display:inline-block;position:relative;'
                  + 'width:150px;height:120px;margin:5px;border:1px solid #00f;z-index:1';
    // 미리보기 이미지 속성
    var img_style = 'width:100%;height:100%;z-index:none';
    // 이미지안에 표시되는 체크박스의 속성
    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
                  + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00';
  
    btnAtt.onchange = function(e){
      var files = e.target.files;
      var fileArr = Array.prototype.slice.call(files)
      for(f of fileArr){
        imageLoader(f);
      }
    }  
    
  
    // 탐색기에서 드래그앤 드롭 사용
    attZone.addEventListener('dragenter', function(e){
      e.preventDefault();
      e.stopPropagation();
    }, false)
    
    attZone.addEventListener('dragover', function(e){
      e.preventDefault();
      e.stopPropagation();
      
    }, false)
  
    attZone.addEventListener('drop', function(e){
      var files = {};
      e.preventDefault();
      e.stopPropagation();
      var dt = e.dataTransfer;
      files = dt.files;
      for(f of files){
        imageLoader(f);
      }
      
    }, false)
    

    
    /*첨부된 이미리즐을 배열에 넣고 미리보기 */
    imageLoader = function(file){
      sel_files.push(file);
      var reader = new FileReader();
      reader.onload = function(ee){
        let img = document.createElement('img')
        img.setAttribute('style', img_style)
        img.src = ee.target.result;
        attZone.appendChild(makeDiv(img, file));
      }
      
      reader.readAsDataURL(file);
    }
    
    /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
    makeDiv = function(img, file){
      var div = document.createElement('div')
      div.setAttribute('style', div_style)
      
      var btn = document.createElement('input')
      btn.setAttribute('type', 'button')
      btn.setAttribute('value', 'x')
      btn.setAttribute('delFile', file.name);
      btn.setAttribute('style', chk_style);
      btn.onclick = function(ev){
        var ele = ev.srcElement;
        var delFile = ele.getAttribute('delFile');
        for(var i=0 ;i<sel_files.length; i++){
          if(delFile== sel_files[i].name){
            sel_files.splice(i, 1);      
          }
        }
        
        dt = new DataTransfer();
        for(f in sel_files) {
          var file = sel_files[f];
          dt.items.add(file);
        }
        btnAtt.files = dt.files;
        var p = ele.parentNode;
        attZone.removeChild(p)
      }
      div.appendChild(img)
      div.appendChild(btn)
      return div
    }
  
)('att_zone', 'btnAtt')

</script>




</html>
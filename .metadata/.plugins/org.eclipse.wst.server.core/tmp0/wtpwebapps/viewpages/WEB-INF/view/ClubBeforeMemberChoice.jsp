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

<title>지원자 리스트</title>

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
</style>
</head>
<body>


  <!-- modal button -->
   <div>
      <a href="#" id="modal1" class="btn btn-success btn-sm"
         data-bs-toggle="modal" data-bs-target="#employee_details1">선정하기</a>
   </div>
 

   <!-- Modal -->
   <!-- 평가 창 -->

   <div class="modal fade" id="employee_details1" tabindex="-1"
      aria-labelledby="employee_details1" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel">함께하기</h5>
               <button type="button" class="btn-close" data-bs-dismiss="modal"
                  aria-label="닫기"></button>
            </div>
            <div class="row">
               <div class="col-lg-4">
                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
                        role="img" aria-label="Placeholder: 80x80"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
               <title>Placeholder</title><rect width="100%" height="100%"
                           fill="#777" />
               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>

                     <p>닉네임</p>
                  </a>
               </div>
               <!-- /.col-lg-4 -->
               <div class="col-lg-4">
                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
                        role="img" aria-label="Placeholder: 80x80"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
               <title>Placeholder</title><rect width="100%" height="100%"
                           fill="#777" />
               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>

                     <p>닉네임</p>
                  </a>
               </div>
               <!-- /.col-lg-4 -->
               <div class="col-lg-4">
                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
                        role="img" aria-label="Placeholder: 80x80"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
               <title>Placeholder</title><rect width="100%" height="100%"
                           fill="#777" />
               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>

                     <p>닉네임</p>
                  </a>
               </div>
               <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->

            <div class="row">
               <div class="col-lg-4">
                  <a href="#"> <svg
                        class="bd-placeholder-img rounded-circle" width="80" height="80"
                        xmlns="http://www.w3.org/2000/svg" role="img"
                        aria-label="Placeholder: 80x80"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
               <title>Placeholder</title><rect width="100%" height="100%"
                           fill="#777" />
               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>

                     <p>닉네임</p>
                  </a>
               </div>
               <!-- /.col-lg-4 -->
               <div class="col-lg-4">
                  <a href="#"> <svg class="bd-placeholder-img rounded-circle"
                        width="80" height="80" xmlns="http://www.w3.org/2000/svg"
                        role="img" aria-label="Placeholder: 80x80"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
               <title>Placeholder</title><rect width="100%" height="100%"
                           fill="#777" />
               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>

                     <p>닉네임</p>
                  </a>
               </div>
               <!-- /.col-lg-4 -->
               <!-- 이중모달 연결 -->
               <div class="col-lg-4">
                  <a href="#" data-bs-toggle="modal"
                     data-bs-target="#employee_details2"> <svg
                        class="bd-placeholder-img rounded-circle" width="80" height="80"
                        xmlns="http://www.w3.org/2000/svg" role="img"
                        aria-label="Placeholder: 80x80"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
               <title>Placeholder</title><rect width="100%" height="100%"
                           fill="#777" />
               <text x="50%" y="50%" fill="#777" dy=".3em">80x80</text></svg>

                     <p>닉네임</p></a> </a>
               </div>

               <div></div>
               <!-- /.col-lg-4 -->
               <div class="modal-footer">
                  <button type="button" class="btn btn-secondary"
                     data-bs-dismiss="modal">Close</button>

               </div>

            </div>
            <!-- /.row -->

         </div>



      </div>
   </div>



   <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
      integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp"
      crossorigin="anonymous"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"
      integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/"
      crossorigin="anonymous"></script>
   <script>
      $(document).ready(function()
      {

         $('#employee_details2').on('beforeShow', function()
         {
            console.log('Submodal beforeShow event');
         }).on('show', function()
         {
            console.log('Submodal show event');
         }).on('beforeHide', function()
         {
            console.log('Submodal beforeHide event');
         }).on('hide', function()
         {
            console.log('Submodal hide event');
         });

      });
   </script>

</body>
</html>
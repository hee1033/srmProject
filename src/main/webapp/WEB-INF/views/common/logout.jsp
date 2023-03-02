<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLogout" aria-hidden="true">
   <div class="modal-dialog" role="document" style="max-width:450px;">
     <div class="modal-content">
       <div class="modal-header bg-primary">
         	<h5 class="modal-title" id="exampleModalLabelLogout"> 
	          	<img src="${pageContext.request.contextPath}/resources/images/logoOnly.png" style="width:20px;">
	        	<small class="text-white"><b>Logout</b></small>
	        </h5>
         <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true">&times;</span>
         </button>
       </div>
       <div class="modal-body justify-content-center text-center p-5">
	       <div class="d-flex align-items-center">
		       <div id="iconWrapper" class="mr-4">
			       	<i class="fas fa-exclamation-triangle" style="font-size:3rem; color:#FFA426;"></i>
		       </div>
		       <div id="dialogWrapper" class="text-left">
			     <h5>정말 로그아웃 하시겠습니까?</h5>
		       </div>
	       </div>
       </div>
       <div class="modal-footer justify-content-center text-center">
         <button type="button" class="btn btn-outline-primary mx-2" data-dismiss="modal">취소</button>
         <a href="${pageContext.request.contextPath}/user/logout" class="btn btn-primary">로그아웃</a>
       </div>
     </div>
   </div>
 </div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div class="tab-content" style="min-height: 400px;">
		<div class="tab-pane active" id="all" role="tabpanel"
			aria-labelledby="home-tab">
			<div class="table-responsive">
				<table class="table table-hover border p-1" >
					<thead class="thead-light">
						<tr>
							<th>SR번호</th>
							<th>제목</th>
							<th>관련 시스템</th>
							<th>상태</th>
							<th>완료예정일</th>
							<th>중요</th>
							<th>진척도</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${srList}">
						<tr >
							<td><a href="#">${list.srNo}</a></td>
							<td>${list.srTtl}</td>
							<td>${list.sysNm}</td>
							<td><span class="badge badge-success">${list.sttsNm}</span></td>
							<td>${list.srRegDate}</td>
							<td>${list.srPry}</td>
							<td>
								<div class="progress">
									<c:choose>
										<c:when test="${list.sttsNm eq '검토중'}">
											<div class="progress-bar bg-danger" role="progressbar" 
											style="width:25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
										</c:when>
										<c:when test="${list.sttsNm eq '접수'}">
											<div class="progress-bar bg-waring" role="progressbar" 
											style="width:50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
										</c:when>
										<c:when test="${list.sttsNm eq '개발중'}">
											<div class="progress-bar bg-info" role="progressbar" 
											style="width:75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
										</c:when>
										<c:when test="${list.sttsNm eq '개발 완료'}">
											<div class="progress-bar bg-success" role="progressbar" 
											style="width:100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
										</c:when>
										<c:otherwise>
											<div class="progress-bar bg-danger" role="progressbar" 
											style="width:0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</c:otherwise>
									</c:choose>
								</div>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<c:if test="${pager.totalRows != 0}">
					<div class="pager d-flex justify-content-center my-3">
						<div class="pagingButtonSet d-flex justify-content-center">
							<c:if test="${pager.pageNo > 1}">
								<a onclick="homeMiniViewChange(${sttsNo}, 1)" type="button" class="btn btn-outline-primary btn-sm m-1">처음</a>
							</c:if>
							<c:if test="${pager.groupNo > 1}">
								<a onclick="homeMiniViewChange(${sttsNo}, ${pager.startPageNo-1})" type="button" class="btn btn-outline-info btn-sm m-1">이전</a>
							</c:if>
			
							<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
								<c:if test="${pager.pageNo != i}">
									<a onclick="homeMiniViewChange(${sttsNo}, ${i})" type="button" class="btn btn-outline-info btn-sm m-1">${i}</a>
								</c:if>
								<c:if test="${pager.pageNo == i}">
									<a onclick="homeMiniViewChange(${sttsNo}, ${i})" type="button" class="btn btn-primary btn-sm m-1">${i}</a>
								</c:if>
							</c:forEach>
			
							<c:if test="${pager.groupNo < pager.totalGroupNo }">
								<a onclick="homeMiniViewChange(${sttsNo}, ${pager.endPageNo+1})" type="button" class="btn btn-outline-info btn-sm m-1">다음</a>
							</c:if>
							<c:if test="${pager.pageNo < pager.totalPageNo }">
								<a onclick="homeMiniViewChange(${sttsNo}, ${pager.totalPageNo})" type="button" class="btn btn-outline-primary btn-sm m-1">맨끝</a>
							</c:if>
						</div>
					</div>
				</c:if>
			</div>
		</div>
		<c:if test="${empty srList}">
			<div class="alert alert-secondary m-3 p-2" role="alert">
                  <h6><i class="fas fa-exclamation-triangle"></i><b> 안내 </b></h6>
                  	조건에 맞는 SR건이 존재하지 않습니다.
                </div>
		</c:if>
	</div>
<div class="card-footer"></div>
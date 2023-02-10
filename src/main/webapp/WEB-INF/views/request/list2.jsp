<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  	<%@include file="/WEB-INF/views/common/head.jsp" %>
</head>

<body id="page-top">
  <div id="wrapper">
    <!-- Sidebar -->
   	<%@include file="/WEB-INF/views/common/sidebar.jsp" %>

    
    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">
        
        <!-- TopBar -->
         <%@include file="/WEB-INF/views/common/topbar.jsp" %>


        <!-- 메인 컨테이너 Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
        
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-900">SR 요청관리</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/request/list">SR 관리</a></li>
              <li class="breadcrumb-item active" aria-current="page">SR 요청관리</li>
            </ol>
          </div>
		
          <!-- Row -->
     		<div class="row">
            <div class="col-lg-6">
              <!-- Select2 -->
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Select2</h6>
                </div>
                <div class="card-body">        
                  <p>Select2 is a jQuery based replacement for select boxes</p>          
                  <div class="form-group">
                    <label for="select2Single">Single Select Box</label>
                    <select class="select2-single form-control" name="state" id="select2Single">
                      <option value="">Select</option>
                      <option value="Aceh">Aceh</option>
                      <option value="Sumatra Utara">Sumatra Utara</option>
                      <option value="Sumatra Barat">Sumatra Barat</option>
                      <option value="Riau">Riau</option>
                      <option value="Kepulauan Riau">Kepulauan Riau</option>
                      <option value="Jambi">Jambi</option>
                      <option value="Bengkulu">Bengkulu</option>
                      <option value="Sumatra Selatan">Sumatra Selatan</option>
                      <option value="Kepulauan Bangka Belitung">Kepulauan Bangka Belitung</option>
                      <option value="Lampung">Lampung</option>
                      <option value="Banten">Banten</option>
                      <option value="Jawa Barat">Jawa Barat</option>
                      <option value="Jakarta">Jakarta</option>
                      <option value="Jawa Tengah">Jawa Tengah</option>
                      <option value="Yogyakarta">Yogyakarta</option>
                      <option value="Jawa TImur">Jawa Timur</option>
                      <option value="Bali">Bali</option>
                      <option value="Nusa Tenggara Barat">Nusa Tenggara Barat</option>
                      <option value="Nusa Tenggara Timur">Nusa Tenggara Timur</option>
                      <option value="Kalimantan Barat">Kalimantan Barat</option>
                      <option value="Kalimantan Selatan">Kalimantan Selatan</option>
                      <option value="Kalimantan Tengah">Kalimantan Tengah</option>
                      <option value="Kalimantan Timur">Kalimantan Timur</option>
                      <option value="Kalimantan Utara">Kalimantan Utara</option>
                      <option value="Gorontalo">Gorontalo</option>
                      <option value="Sulawaesi Barat">Sulawesi Barat</option>
                      <option value="Sulawesi Selatan">Sulawesi Selatan</option>
                      <option value="Sulawesi Tengah">Sulawesi Tengah</option>
                      <option value="Sulawesi Tenggara">Sulawesi Tenggara</option>
                      <option value="Sulawesi Utara">Sulawesi Utara</option>
                      <option value="Maluku">Maluku</option>
                      <option value="Maluku Utara">Maluku Utara</option>
                      <option value="Papua Barat">Papua Barat</option>
                      <option value="Papua">Papua</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="select2SinglePlaceholder">Single Select Box with Placeholder</label>
                    <select class="select2-single-placeholder form-control" name="state" id="select2SinglePlaceholder">
                      <option value="">Select</option>
                      <option value="Aceh">Aceh</option>
                      <option value="Sumatra Utara">Sumatra Utara</option>
                      <option value="Sumatra Barat">Sumatra Barat</option>
                      <option value="Riau">Riau</option>
                      <option value="Kepulauan Riau">Kepulauan Riau</option>
                      <option value="Jambi">Jambi</option>
                      <option value="Bengkulu">Bengkulu</option>
                      <option value="Sumatra Selatan">Sumatra Selatan</option>
                      <option value="Kepulauan Bangka Belitung">Kepulauan Bangka Belitung</option>
                      <option value="Lampung">Lampung</option>
                      <option value="Banten">Banten</option>
                      <option value="Jawa Barat">Jawa Barat</option>
                      <option value="Jakarta">Jakarta</option>
                      <option value="Jawa Tengah">Jawa Tengah</option>
                      <option value="Yogyakarta">Yogyakarta</option>
                      <option value="Jawa TImur">Jawa Timur</option>
                      <option value="Bali">Bali</option>
                      <option value="Nusa Tenggara Barat">Nusa Tenggara Barat</option>
                      <option value="Nusa Tenggara Timur">Nusa Tenggara Timur</option>
                      <option value="Kalimantan Barat">Kalimantan Barat</option>
                      <option value="Kalimantan Selatan">Kalimantan Selatan</option>
                      <option value="Kalimantan Tengah">Kalimantan Tengah</option>
                      <option value="Kalimantan Timur">Kalimantan Timur</option>
                      <option value="Kalimantan Utara">Kalimantan Utara</option>
                      <option value="Gorontalo">Gorontalo</option>
                      <option value="Sulawaesi Barat">Sulawesi Barat</option>
                      <option value="Sulawesi Selatan">Sulawesi Selatan</option>
                      <option value="Sulawesi Tengah">Sulawesi Tengah</option>
                      <option value="Sulawesi Tenggara">Sulawesi Tenggara</option>
                      <option value="Sulawesi Utara">Sulawesi Utara</option>
                      <option value="Maluku">Maluku</option>
                      <option value="Maluku Utara">Maluku Utara</option>
                      <option value="Papua Barat">Papua Barat</option>
                      <option value="Papua">Papua</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="select2Multiple">Multiple-Select Boxes (pillbox)</label>
                    <select class="select2-multiple form-control" name="states[]" multiple="multiple"
                      id="select2Multiple">
                      <option value="">Select</option>
                      <option value="Aceh">Aceh</option>
                      <option value="Sumatra Utara">Sumatra Utara</option>
                      <option value="Sumatra Barat">Sumatra Barat</option>
                      <option value="Riau">Riau</option>
                      <option value="Kepulauan Riau" selected>Kepulauan Riau</option>
                      <option value="Jambi">Jambi</option>
                      <option value="Bengkulu">Bengkulu</option>
                      <option value="Sumatra Selatan">Sumatra Selatan</option>
                      <option value="Kepulauan Bangka Belitung">Kepulauan Bangka Belitung</option>
                      <option value="Lampung">Lampung</option>
                      <option value="Banten">Banten</option>
                      <option value="Jawa Barat" selected>Jawa Barat</option>
                      <option value="Jakarta">Jakarta</option>
                      <option value="Jawa Tengah">Jawa Tengah</option>
                      <option value="Yogyakarta">Yogyakarta</option>
                      <option value="Jawa TImur">Jawa Timur</option>
                      <option value="Bali">Bali</option>
                      <option value="Nusa Tenggara Barat">Nusa Tenggara Barat</option>
                      <option value="Nusa Tenggara Timur">Nusa Tenggara Timur</option>
                      <option value="Kalimantan Barat">Kalimantan Barat</option>
                      <option value="Kalimantan Selatan">Kalimantan Selatan</option>
                      <option value="Kalimantan Tengah">Kalimantan Tengah</option>
                      <option value="Kalimantan Timur">Kalimantan Timur</option>
                      <option value="Kalimantan Utara">Kalimantan Utara</option>
                      <option value="Gorontalo">Gorontalo</option>
                      <option value="Sulawaesi Barat">Sulawesi Barat</option>
                      <option value="Sulawesi Selatan">Sulawesi Selatan</option>
                      <option value="Sulawesi Tengah">Sulawesi Tengah</option>
                      <option value="Sulawesi Tenggara">Sulawesi Tenggara</option>
                      <option value="Sulawesi Utara">Sulawesi Utara</option>
                      <option value="Maluku">Maluku</option>
                      <option value="Maluku Utara">Maluku Utara</option>
                      <option value="Papua Barat">Papua Barat</option>
                      <option value="Papua">Papua</option>
                    </select>
                  </div>
                  <p>For documentations Select2 you can visit <a href="https://select2.org/"
                    target="_blank">here.</a></p>
                </div>
              </div>

            </div>
            <div class="col-lg-6">
              <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Date Picker</h6>
                </div>
                <div class="card-body">
                  <p>Simple and easy select a time for a text input using your mouse.</p>
                  <div class="form-group" id="simple-date1">
                    <label for="simpleDataInput">Simple Data Input</label>
                      <div class="input-group date">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-calendar"></i></span>
                        </div>
                        <input type="text" class="form-control" value="01/06/2020" id="simpleDataInput">
                      </div>
                  </div>
                  <div class="form-group" id="simple-date2">
                    <label for="oneYearView">One Year View</label>
                      <div class="input-group date">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-calendar"></i></span>
                        </div>
                        <input type="text" class="form-control" value="01/06/2020" id="oneYearView">
                      </div>
                  </div>
                  <div class="form-group" id="simple-date3">
                    <label for="decadeView">Decade View</label>
                      <div class="input-group date">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-calendar"></i></span>
                        </div>
                        <input type="text" class="form-control" value="01/06/2020" id="decadeView">
                      </div>
                  </div>
                  <div class="form-group" id="simple-date4">
                    <label for="dateRangePicker">Range Select</label>
                    <div class="input-daterange input-group">
                      <input type="text" class="input-sm form-control" name="start" />
                      <div class="input-group-prepend">
                        <span class="input-group-text">to</span>
                      </div>
                      <input type="text" class="input-sm form-control" name="end" />
                    </div>
                  </div>
                  <p>For documentations Bootstrap Datepicker you can visit <a href="https://github.com/uxsolutions/bootstrap-datepicker" target="_blank">here.</a></p>
                </div>
              </div>
            </div>
          </div>
          <!-- Row -->

          

          <!-- 로그아웃 모달 -->
           <%@include file="/WEB-INF/views/common/logout.jsp" %>
        </div>
        <!---Container Fluid-->
      </div>
      
      <!-- Footer -->
     <%@include file="/WEB-INF/views/common/footer.jsp" %>

    </div>
  </div>
 <%@include file="/WEB-INF/views/common/bottom.jsp" %>
</body>

</html>

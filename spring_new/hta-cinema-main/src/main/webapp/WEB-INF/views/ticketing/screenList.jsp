<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>HTA CINEMA</title>
    <link rel="stylesheet" href="/resources/css/navbar.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <link rel="stylesheet" href="/resources/css/screenList.css">
    <link rel="stylesheet" href="/resources/css/common.css" />
  	<link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">
</head>
<body>
	<%@include file="../common/tags.jsp" %>
	<%@include file="../common/navbar.jsp"%>
    <div class="container" style="width: 1250px;">
        <div class="row mb-3">
            <div class="col">
                <h2>빠른 예매</h2>
            </div>
        </div>
        <div class="col-10">
            <div class="my-box">
                <div class="day">
                    <!-- 페이지 네이션으로 입력할 것 -->
                    <!--일에 따라서 class가 바뀐다. -->
                    <div class="month"></div>
                   	<div class="now-day">
                   	</div>
                </div>
                <div class="movie-container">
                <div class="left-one">
                    <h3>영화</h3>
                    <div class="movie-name">
                        <button class="movie-name-button" type="button">전체</button>
                    </div>
                    <div class="movie-list">
	                    <c:choose>
	                    	<c:when test="${param.no eq 0}">
	                    		<c:forEach var="movie" items="${movies}">
			                    	<button class="movie-button" type="button" value="${movie.movieNo}" >
			                            <img src="${movie.ratingImageURL} " alt="${movie.ratingName}"/>
			                            <span class="txt">${movie.movieName}</span>
			                            <img src="/resources/images/btn/ico-heart.png" alt="heart" class="buttonicon">
			                        </button>
			                    </c:forEach>
	                    	</c:when>
	                    	<c:otherwise>
	                    		<c:forEach var="movie" items="${movies}">
			                    	<button class="movie-button ${movie.movieNo eq param.no ? 'active' : '' }" type="button" value="${movie.movieNo}"  >
			                            <img src="${movie.ratingImageURL} " alt="${movie.ratingName}"/>
			                            <span class="txt">${movie.movieName}</span>
			                            <img src="/resources/images/btn/ico-heart.png" alt="heart" class="buttonicon">
			                        </button>
			                    </c:forEach>
	                    	</c:otherwise>
	                    </c:choose>
                    </div>
                    <div class="movie-img">
                        <div class="choice-list" id="choiceMovieList-0">
                        	<img id="picture" alt="no-pricture" src="/resources/images/movie/no-graph03.jpg">
                        	<p id="picture-name">영화를 클릭하세요</p>
                        </div>
                    </div>
                </div>
                <div class="center-one">
                    <h3>극장</h3>
                    <div class="theater-list">
                        <button class="theater-all-button">전체</button>
                        <div class="theater-spacial-button"></div>
                    </div>
                    <div class="list-theater-detail">
                        <div class="all-theater-list">
                         	<div class="explain-button">
                         		<p style="display:flex">영화를 선택하세요</p>
                         		<c:forEach var="region" items="${regions }">
	                        		<button class='list-theater-button' data-region='${region.no }' style="display:none">${region.name }</button>
	                        	</c:forEach>
                         	</div>
                        </div>
                        <div class="theater-choies">
                        
                        </div>
                    </div>
                    <div class="theater-choies-check">
                        <p class="check-content" style="display:flex;">전체극장<br>
                            목록에서 극장을 선택하세요
                        </p>
                        <!--선택했을 경우 클릭하면 입력되고 아니면 열리지 않는다.-->
                        <div class="check-theater" style="display:none;">
                        
                        </div>
                    </div>
                </div>
                <div class="right-one">
                    <h3>시간</h3>
                    <div class="time-check">
                    </div>
                    <div class="movie-check">
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="footer">
            <div class="advertise-footer">
                <img src="/resources/images/btn/광고.jpg" alt="advertisement">
            </div>
        </div>
      </div>
      <form action="/ticketing/ticketingList" method="post" id="form-post-List">
      	<input type="hidden" name="day" value="" />
      	<input type="hidden" name="movieNo" value="" />
      	<input type="hidden" name="theaterNo" value="" />
      	<input type="hidden" name="time" value="" />
      	<input type="hidden" name="ratingNo" value="" />
      	<input type="hidden" name="showTypeNo" value="" />
      	<input type="hidden" name="screenNo" value="" />
      	<input type="hidden" name="regionNo" value="" />
      	<input type="hidden" name="showScheduleNo" value="" />
      </form>
</body>
<script type="text/javascript">
	$(function(){
		
		let apiKey ="935cc74a36fab18e33ea802df5ebd3f4";
		let imageUrl = "https://image.tmdb.org/t/p/w500/";
		let movieId = $('button.movie-button,active').val();
		
			
		
		
		const dataDate = new Date();
		let year = dataDate.getFullYear();
		let month = dataDate.getMonth();
		let dataDay = dataDate.getDate();
		let dayLabel = dataDate.getDay();
		let dayNumber = Number(dataDay);
		$('div.month').text((Number(month)+1)+"월");
		
		const reserveDate = $('div.now-day');
		
		const weekOfDay = ["일", "월", "화", "수", "목", "금", "토"];
		let thisWeek = [];
		let button = "";
		let spanWeekOfDay = "";
		let spanDay = "";
		let div = "";
		for(let i = dayNumber ; i<=dayNumber+11 ; i++) {
			
			div = document.createElement("div");
			button = document.createElement("button");
			spanWeekOfMonth = document.createElement("span");
			spanWeekOfDay = document.createElement("span");
			spanDay = document.createElement("strong");
			spanWeekOfMonth.classList="movie-week-of-month";
			spanWeekOfDay.classList = 'movie-week-of-day';
			spanDay.classList ='movie-day';
			let resultDay = new Date(year, month, i);
			let yyyy = resultDay.getFullYear();
			let mm = Number(resultDay.getMonth())+1;
			let dd = resultDay.getDate();
			let d = resultDay.getDay();
			
			mm = String(mm).length === 1 ? '0'+mm : mm;
			dd = String(dd).length === 1 ? '0'+dd : dd;
			d = String(d).length === 1 ? '0'+d : d;
			spanWeekOfMonth.innerHTML = mm;
			spanWeekOfDay.innerHTML = dd;
			
			button.append(spanWeekOfDay);
			if(d == '01'){
				d=weekOfDay[1];
				button.classList = "mon";
				button.setAttribute('data-day',yyyy+mm+dd+d);
			} else if(d == '02'){
				d=weekOfDay[2];
				button.classList = "mon";
				button.setAttribute('data-day',yyyy+mm+dd+d);
			} else if(d == '03'){
				d=weekOfDay[3];
				button.classList = "mon";
				button.setAttribute('data-day',yyyy+mm+dd+d);
			} else if(d == '04'){
				d=weekOfDay[4];
				button.classList = "mon";
				button.setAttribute('data-day',yyyy+mm+dd+d);
			} else if(d == '05'){
				d=weekOfDay[5];
				button.classList = "mon";
				button.setAttribute('data-day',yyyy+mm+dd+d);
			} else if(d == '06'){
				d=weekOfDay[6];
				button.classList ="mon sat";
				button.setAttribute('data-day',yyyy+mm+dd+d);
			} else if(d == '00'){
				d=weekOfDay[0];
				button.classList="mon sun";
				button.setAttribute('data-day',yyyy+mm+dd+d);
			}
			if(i===dayNumber){
				button.classList="mon active";
				//해당날짜는 버튼이 눌려있게 설정함
			}
			spanDay.innerHTML = d;
			button.append(spanDay);
			reserveDate.append(button);
			
			
			thisWeek[i] = yyyy + "-" + mm +'-' +dd +'-'+d ;
		}
		//날짜 클릭시 활성화 버튼과 hidden으로 data값 전송
		$('div.now-day').on('click','button.mon',function(){
			let $btnActive = $(this);
			let dataAttr = $btnActive.attr('data-day');
			if($btnActive.hasClass('active')){
				$('button.mon').removeClass('active');
			} else{
				$('button.mon').removeClass('active');
				$btnActive.addClass('active');
			}
		})
		//날짜 클릭했으면 활성화버튼 해제 
		$('div.now-day').on('click','button.active',function(){
			let $btnMon = $(this);
			$btnMon.attr('class','mon');
		})
		$('button.movie-button').ready(function(){
			let valueNo = $('button.movie-button,active').val();
			let texts = $('button.movie-button.active').text();
			let path = '${param.no}'
			let detailUrl = 'https://api.themoviedb.org/3/movie/'+ path;
			$('#choiceMovieList-0').css('display','flex');
			$.ajax({
				type:'get',
				url: detailUrl,
				data: {
					"api_key":"935cc74a36fab18e33ea802df5ebd3f4",
					language: "ko-KR",
					region: "KR"
				},
				dataType: 'json',
				success:function(movie){
					let imagePath = imageUrl + movie.poster_path;
					$('#picture').attr('src',imagePath);
				}
				})
				$('#picture-name').text(texts);
			
			$('.explain-button').find('p').css('display','none');
			$('.explain-button').find('.list-theater-button').css('display','flex');
		})
		
		//영화버튼 클릭시 극장 정보 가져오기
		$('button.movie-button').click(function(){
			let $movieButton = $(this);
			let valueNo = $movieButton.val();
			let texts = $movieButton.text();
			let attrNo =  $movieButton.attr('class');
			$('.explain-button p').css('display','none');
			$('button.list-theater-button').css('display','flex');
			$('#choiceMovieList-0').css('display','flex');
			if($movieButton.hasClass('active')){
				$('button.movie-button').removeClass('active');
				$('#picture').attr('src','/resources/images/movie/no-graph03.jpg');
				$('#picture-name').text("영화를 선택하세요");
			} else{
				$('button.movie-button').removeClass('active');
				$movieButton.addClass('active');
				$('#picture-name').text(texts);
				let detailUrl = "https://api.themoviedb.org/3/movie/" + valueNo;
				$.ajax({
					type:'get',
					url: detailUrl,
					data: {
						"api_key":"935cc74a36fab18e33ea802df5ebd3f4",
						language: "ko-KR",
						region: "KR"
					},
					dataType: 'json',
					success:function(movie){
						let imagePath = imageUrl + movie.poster_path;
						$('#picture').attr('src',imagePath);
					}
					})
			}
			//아래에 클릭시 이미지가 뜨도록 	
		})
		//해당하는 극장명이 출력된다. 
		$('button.list-theater-button').click(function(){
			let $dataAttr = $('div.theater-choies');
			$dataAttr.empty();
			let regionNo = $(this).attr('data-region');
			$.getJSON("/rest/theater",{regionNo: regionNo},function(response){
				$.each(response.items,function(index, theater){
						let output ="<button class='list-theater-button' data-theater="+theater.no+" title="+theater.name+">"+theater.name+"</button>"
						 $dataAttr.append(output);
				})
			})
		})
		//극장명을 클릭하면	
		$('div.theater-choies').on('click','button.list-theater-button',function(){
			let $dataAttr = $('div.movie-check');
			$('p.check-content').css('display','none');
			$dataAttr.empty();
			let $btn = $(this);
			let texts = $btn.text();
			if($btn.hasClass('active')){
				$('button.list-theater-button').removeClass('active');
				$('.check-theater').css('display','none');
			} else{
				$('button.list-theater-button').removeClass('active');
				$btn.addClass('active');
				$('.check-theater').text(texts);
				$('.check-theater').css('display','flex');
			}
			let day = $('button.mon.active').find('span.movie-week-of-day').text();
			let dayNm = parseInt(day);
			let theaterNo =$btn.attr('data-theater');
			let movieNo =$('button.movie-button.active').val();
			let timeNo = $('.time-check-button:eq(0)').text();
			let regionNo = $('.list-theater-button.active').attr('data-region');
			let $theaterNames = $('div.theater-choies');
			$.getJSON('/rest/theaterList',{movieNo: movieNo, theaterNo: theaterNo, timeNo: timeNo, dayNm:dayNm},function(response){
				$.each(response.items,function(index, theater){
					let $list  = $('div.theater-choies');
					let $movie = $('div.movie-check');
					if(theater.showTypeSubTitle == 'Y'){
						theater.showTypeSubTitle = "자막(O)";
					} else {
						theater.showTypeSubTitle = "자막(X)";
					}
					if(response.items == null){
						alert("해당하는 시간의 시간표가 존재하지 않습니다.");
					}
						let listputs="<button class='theater-choies-button'>"+theater.theaterName+"</button>";
						$list.append(listputs)
						
						//스케쥴에 출력되는 값 --> 나중에 시간설정 후 옮겨 놓을 것 
						let input ="<button type='button'  class='btn-on' value="+theater.showScheduleStartTime+" >";
		                input += "<div class='legend' data-screenNo="+theater.screenNo+" data-showScheDuleNo="+theater.showScheduleNo+"></div>";
		                input += "<span class='time'>";
		                input +="<strong title='상영시작' data-time="+theater.showScheduleStartTime+"'>"+theater.showScheduleStartTime+"</strong>";
		                input +="<em title='상영종료'>~"+theater.showScheduleEndTime+"</em>";
		                input +="</span>";
		                input +="<span class='title' data-regionNo="+theater.regionNo+">";
		                input +="<strong data-movieNo="+theater.movieNo+">"+theater.movieName+"</strong>";
		                input +="<em data-ratingNo="+theater.movieRatingNo+" data-showTypeNo="+theater.showTypeNo+">"+theater.showTypeName+theater.showTypeSubTitle+"</em>";   
		                input +="</span>";
		                input +="<div class='info'>";
		                input +="<span class='theater' data-theaterNo="+theater.theaterNo+" title='극장'>";
		                input +=""+theater.theaterName+"<br>";       
		                input +=""+theater.screenName;      
		                input +="</span>"; 
		                input +="<span class='seat'>";    
		                input +="<strong class='now' title='잔여좌석'>"+theater.reservableSeat+"</strong>";      
		                input +="<em class='all' title='"+theater.realTotalSeat+"'>/"+theater.realTotalSeat+"</em>";      
		                input +="</span>";   
		                input +="</div>";
		                input +="</button>";
		                $movie.append(input);
					
			})
		})
		})
		//시간출력하는 부분
		$('div.time-check').append(function(){
			let currentDate = new Date();
			let msg = Number(currentDate.getHours());
				for(let i = msg; i<msg+10; i++){
					let button = "";
					let $time = $('div.time-check');
					button = document.createElement("button");
					button.classList='time-check-button';
					if(i > 24) {
						button.innerHTML=Number();
					} else {
						button.innerHTML=Number(i);
						$time.append(button);
					}
				}
			})
		function timeAppend(event) {
			let day = $('div.mon.active').find('span.movie-week-of-day').text();
			let dayNm = parseInt(day);
			let mday = Number(currentDate.getDate());
			if(dayNm != mday){
				for(let i = 1; i<25; i++){
					let button = "";
					let $time = $('div.time-check');
					button = document.createElement("button");
					button.classList='time-check-button';
					if(i > 24) {
						button.innerHTML=Number();
					} else if(i>10){
						button.innerHTML=Number(""+i);
						$time.append(button);
					} else {
						button.innerHTML=Number(i);
						$time.append(button);
					}
			}
			} else {
				let currentDate = new Date();
				let msg = Number(currentDate.getHours());
					for(let i = msg; i<msg+10; i++){
						let button = "";
						let $time = $('div.time-check');
						button = document.createElement("button");
						button.classList='time-check-button';
						if(i > 24) {
							button.innerHTML=Number();
						} else {
							button.innerHTML=Number(i);
							$time.append(button);
						}
					}
			}

		}
		//버튼 클릭시 정보저장하기
		$('div.movie-check').on('click','button.btn-on',function(e){
			 let $movie= $(this);
			 let movieNo = $movie.find('.title strong').attr('data-movieno');
			 let theaterNo = $movie.find('.theater').attr('data-theaterno');
			 let ratingNo = $movie.find('.title em').attr('data-ratingNo');
			 let showTypeNo = $movie.find('.title em').attr('data-showtypeno');
			 let screenNo = $movie.find('.legend').attr('data-screenno');
			 let regionNo = $movie.find('.title').attr('data-regionno');
			 let dayNo = $('button.mon.active').attr('data-day');
			 let showScheduleNo = $movie.find('.legend').attr('data-showScheDuleNo');
			 $('input[name=movieNo]').attr('value',movieNo);
			 $('input[name=theaterNo]').attr('value',theaterNo);
			 $('input[name=ratingNo]').attr('value',ratingNo);
			 $('input[name=time]').val($movie.val());
		     $('input[name=showTypeNo]').attr('value',showTypeNo);
		     $('input[name=screenNo]').attr('value',screenNo);
		     $('input[name=regionNo]').attr('value',regionNo);
		     $('input[name=day]').attr('value',dayNo);
		     $('input[name=showScheduleNo]').attr('value',showScheduleNo);
		     $('#form-post-List').submit();
		})
	})
</script>
</html>
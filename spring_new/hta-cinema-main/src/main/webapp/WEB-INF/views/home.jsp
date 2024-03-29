<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
	  	<meta charset="utf-8">
	<!--   	<meta name="viewport" content="width=device-width, initial-scale=1"> -->
	  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	  	<script type="text/javascript" src="/resources/js/movie/movieFn.js"></script>
	  	<link rel="stylesheet" href="/resources/css/navbar.css" />
	  	<link rel="stylesheet" href="/resources/css/common.css" />
	  	<link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">
	<title>HTA CINEMA</title>
</head>
<style>

p, a {
	font-family: 'Nanum Gothic', sans-serif;
}

a { color: #fff; text-decoration: none;}

a:hover { color: #fff; text-decoration: underline;}

</style>
<body>
<%@include file="/WEB-INF/views/common/navbar.jsp"%>
	<div class="mt-3 bg-dark movie-head">
		<div class="container">
			<div class="row" id="movie-head">
				<div class="row mt-3 poster">
					<!-- movie top 4 -->					
				</div>
			</div>
			<div class="row text-center">
				<div class="col-4 mb-5">
					<a href="">
						<img alt="" src="/resources/images/main/ico-schedule-main.png">
					상영시간표 
					</a>
				</div>
				<div class="col-4 mb-5">
					<a href="/movie/list">
						<img alt="" src="/resources/images/main/ico-boxoffice-main.png">
					박스오피스
					</a>
				</div>
				<div class="col-4 mb-5">
					<a href="/ticketing/screenList">
						<img alt="" src="/resources/images/main/ico-quick-reserve-main.png">
					빠른예매 
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
	 	<div class="container mt-5 text-center">
	 		<div class="row">
	 			<h4>궁금하신 점이 있으신가요?</h4>
	 			<p>고객센터에 문의해 보세요.</p>
	 		</div>
			<div class="row text-center mt-3">
				<div class="col"></div>
				<div class="col">
					<a href="/supports"><img alt="" src="/resources/images/supports/ico-faq.png">
						<p style="color:black;" class="mt-3">자주 묻는 질문</p>
					</a>
				</div>
				<div class="col">
					<a href="/supports/inquiry"><img alt="" src="/resources/images/supports/ico-oneandone.png">
						<p style="color:black;" class="mt-3">1:1 문의</p>
					</a>
				</div>
				<div class="col"></div>
			</div>
		</div> 
	</div>
<%@include file="common/footer.jsp"%>
<!-- 오류 모달 -->
<%@include file="common/errorModal.jsp"%>
</body>
<script type="text/javascript">
	$(function() {
		
		var errorModal = new bootstrap.Modal(document.getElementById("modal-info-error"), {
			keyboard: false
		});
		
		let apiKey = "935cc74a36fab18e33ea802df5ebd3f4";
		let imageUrl = "https://image.tmdb.org/t/p/w500/";
		let $div = $(".poster");
		
		showTop4();
		
		function showTop4() {
			$.getJSON('/rest/top4', function(response) {

				$.each(response, function(index, movie) {

					let detailUrl = "https://api.themoviedb.org/3/movie/" + movie.no;
					let poster = "";
					
					$.ajax({
						type: "get",
						url: detailUrl,
						data: {"api_key": apiKey, language: "ko-KR"},
						async: false,
						success: function(response) {
							poster = imageUrl + response.poster_path;
						}
					})
					
					let output = "";
					
					output += "<div class='col-3 mt-5 mb-5' style='padding-left: 0px;'>";
					output += "<a href='/movie/detail?no="+movie.no+"'>";
					output += "<img src = '"+poster+"'class='rounded card-img-top' style='width: 17rem; height:440px;'/>";
					output += "</a>";
					output += "<div class='d-flex mt-3'>";
					output += "<button id='btn-"+ movie.no +"' class='btn btn-outline-light btn-like col-5 mt-1 float-end' data-no='"+ movie.no +"' type='button' style='margin-right: 15px;'><img class='me-3' src='/resources/images/movie/unlike.png'><span>"+movie.likeCount+"</span></button>";
					output += "<button data-no='"+ movie.no +"' type='button' class='btn btn-primary col-5 mt-1 float-end'><a href='/ticketing/screenList?no="+movie.no+"'>예매</a></button>";
					output += "</div>";
					output += "</div>";
					
					showMyMovies();
					$div.append(output);
				})
			});
		}
		
		showMyMovies();
		
		$(".poster").on('click', '.btn-like', function() {
			
			let movieNo = $(this).attr("data-no");
			let button = $(this);
			let unlike = "/resources/images/movie/unlike.png";
			let like = "/resources/images/movie/like.png";
			
			if (button.find('img').attr('src') == unlike) {
				
				$.ajax({
					type: "post",
					url: "/rest/like",
					data: {movieNo: movieNo},
					datType: "json",
					success: function(response) {
						if (response.error) {
							$("#span-error").text(response.error);
							errorModal.show();
							
							$("#submit").click(function() {
								errorModal.hide();
							})
							
							return;
						}
						button.find('span').text(response.items.likeCount);
						button.find('img').attr("src", like);
					}
				})
			} else {
				$.ajax({
					type: "delete",
					url: "/rest/like",
					data: {movieNo: movieNo},
					datType: "json",
					success: function(response) {
						button.find('span').text(response.items.likeCount);
						button.find('img').attr("src", unlike);
					}
				})
			}
		});
	})
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  	<meta charset="utf-8">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<link rel="stylesheet" href="/resources/css/movieDetail.css" />
  	<link rel="stylesheet" href="/resources/css/movieList.css" />
  	<link rel="stylesheet" href="/resources/css/navbar.css" />
  	<link rel="stylesheet" href="/resources/css/common.css" />
  	<script type="text/javascript" src="/resources/js/movie/movieFn.js"></script>
  	<link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">
</head>
<head>		
<meta charset="UTF-8">
<title>HTA CINEMA</title>
</head>
<body>
<%@include file="../common/navbar.jsp"%>
	<div class="container">
		<div class="mt-5">
			<h1>전체 영화</h1>
		</div>
		<nav>
			<div class="nav nav-tabs nav-justified mt-5" id="nav-tab" role="tablist">
				<button class="nav-link active" id="nav-boxoffice-tab" data-bs-toggle="tab" data-bs-target="#nav-boxoffice" type="button"
					role="tab" aria-controls="nav-boxoffice" aria-selected="true">박스오피스</button>
				<button class="nav-link" id="nav-upcoming-tab" data-bs-toggle="tab" data-bs-target="#nav-upcoming" type="button" role="tab"
					aria-controls="nav-upcoming" aria-selected="false">상영예정작</button>
				<button class="nav-link" id="nav-trending-tab" data-bs-toggle="tab" data-bs-target="#nav-trending" type="button" role="tab"
					aria-controls="nav-trending" aria-selected="false">인기 영화</button>
			</div>
		</nav>
		<form class="row ms-3 mt-3 g-3 d-flex justify-content-between">
			<div class="col mt-3">
				<span id="search-txt"><strong id="count"></strong> 개의 영화가 검색되었습니다.</span>
			</div>
			<div class="col-auto">
				<input id="search-input" type="text" class="form-control" placeholder="영화명 검색">
			</div>
			<div class="col-auto">
				<button type="button" class="btn btn-sm mb-3 search-btn">
					<img src="/resources/images/nav/ico-search.png">
				</button>
			</div>
		</form>
		<div id="movie-lists" class="tab-content" id="nav-tabContent">
			<div class="ms-4 tab-pane fade show active" id="nav-boxoffice" role="tabpanel" aria-labelledby="nav-boxoffice-tab">
				<div class="row mt-3 poster">
				</div>
			</div>
			<div class="ms-4 tab-pane fade" id="nav-upcoming" role="tabpanel" aria-labelledby="nav-upcoming-tab">
				<div class="row mt-3 poster">
				</div>
			</div>
			<div class="ms-4 tab-pane fade" id="nav-trending" role="tabpanel" aria-labelledby="nav-trending-tab">
				<div class="row mt-3 poster">
				</div>
			</div>
		</div>
		<div class="mt-1 mb-3">
		<div class="container">
			<button id="searchMore" class="btn btn-light col-sm-12">더보기
				<img alt="" src="/resources/images/movie/ico-btn-more-arr.png">
			</button>
		</div>
	</div>
</div>
<%@include file="../common/errorModal.jsp"%>
<%@include file="../common/footer.jsp"%>
<!-- 오류 모달 -->
</body>
<script type="text/javascript">
	$(function () {
		var errorModal = new bootstrap.Modal(document.getElementById("modal-info-error"), {
			keyboard: false
		});
		
		let $div = $("#movie-lists .poster");
		let currentPage = 1;
		let currentMovieUrl = "https://api.themoviedb.org/3/movie/now_playing"
		let imageUrl = "https://image.tmdb.org/t/p/w500/";
		let searchUrl = "https://api.themoviedb.org/3/search/movie";
		let apiKey = "935cc74a36fab18e33ea802df5ebd3f4";
		let totalPage = 0;
		
		getMovieList();
		showMyMovies();
		
		function getMovieList() {
			$.ajax({					
				type: 'get',
				url: currentMovieUrl,
				data: {
					"api_key": apiKey,
					language: "ko-KR",
					region: "KR",
					page: currentPage,
				},
				dataType: 'json',
				success: function(response) {

					let resultCount = response.total_results;
					
					if (resultCount > 100) {
						resultCount = 100;
						
						totalPage = Math.ceil(resultCount/20);
						$("#count").text(100);
						
					} else {
						totalPage = Math.ceil(resultCount/20);
						$("#count").text(resultCount);
					}
					
					showMyMovies();
					showLists(response);
				}
			});	
		}
		
		function showLists(response) {
			let movieList = response.results;
			
			$.each(movieList, function(index, movie) {
				
				let count = 0;
				
				$.ajax({
					type: 'get',
					url: "/rest/count",
					data: {movieNo: movie.id},
					dataType: 'json',
					async: false, // 서버로부터 값이 오지 않으면 다음으로 넘어가지 않음
					success: function(response) {
						count = response.likeCount;
					}
				});
				
				let poster = imageUrl+movie.poster_path; 						
				let output = "";
				
				output += "<div class='col-3 mb-5' style='padding-left: 0px;'>";
				output += "<a href='/movie/detail?no="+movie.id+"'>";
				if (movie.poster_path) {
					output += "<img src = '" +poster+ "'class='rounded card-img-top' style='width: 17rem; height:440px;'/>";
				} else {
					output += "<img src ='/resources/images/movie/none.jpg' class='rounded card-img-top' style='width: 17rem; height:440px;'/>";
				}
				output += "</a>";
				if (movie.title) {
					output += "<p class='mt-2 title-txt'>" + movie.title + "</p>";
				} else {
					output += "<p class='mt-2 title-txt'>"+ movie.name +"</p>";
				}
				if (movie.release_date) {
					output += "<span class='openDt-txt'> 개봉일 | "+ movie.release_date +"</span>";
				} else {
					output += "<span class='openDt-txt'> 개봉일 |  미정</span>";
				}
				output += "<div class='d-flex'>";
				output += "<button id='btn-"+ movie.id +"' class='btn btn-light btn-like col-5 mt-1 float-end' data-no='"+ movie.id +"' type='button' style='margin-right: 15px;'><img class='me-3' src='/resources/images/movie/unlike.png'><span>"+count+"</span></button>";
				output += "<button type='button' class='btn btn-primary ticket col-5 mt-1 float-end'><a href='/ticketing/screenList?no="+movie.id+"'>예매</a></button>";
				output += "</div>";
				output += "</div>";
				
				$div.append(output);
			});
		}
		
		function refreshMovie() {
			$("#searchMore").removeAttr("disabled");
			$("#search-input").val('');
			currentPage = 1;
			$div.empty();
			
			showMyMovies();
			getMovieList();
		}
		
		$('#nav-boxoffice-tab').click(function() {
			currentMovieUrl = "https://api.themoviedb.org/3/movie/now_playing";
			refreshMovie();
		});
		
		$('#nav-upcoming-tab').click(function() {
			currentMovieUrl = "https://api.themoviedb.org/3/movie/upcoming";
			refreshMovie();
		});
		
		$('#nav-trending-tab').click(function() {
			currentMovieUrl = "https://api.themoviedb.org/3/trending/all/day";
			refreshMovie();
		});
		
		// 더보기 버튼 클릭 시
		$("#searchMore").click(function() {
			if (currentPage < totalPage) {
				currentPage++;
				getMovieList();
			} else {
				this.disabled = true;
			}
		})
		
		// 영화 검색 기능
		$(".search-btn").click(function() {
			let keyword = $("#search-input").val();
			$.ajax({
				type: 'get',
				url: searchUrl,
				data: {
					"api_key": apiKey,
					language: "ko-KR",
					page: currentPage,
					query: keyword
				},
				success: function(response) {
					let resultCount = response.total_results;
					totalPage = Math.ceil(resultCount/20);
					$("#count").text(resultCount);
					
					$("#searchMore").removeAttr("disabled");
					$div.empty();
					showMyMovies();
					showLists(response);
				}
			})
		});
		
		// 에러창을 보여주는 모달
		function showError(message) {
			$("#span-error").text(message);
			errorModal.show();
			
			$("#submit").click(function() {
				errorModal.hide();
			})
		}
		
		// 좋아요 기능
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
							showError(response.error);
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
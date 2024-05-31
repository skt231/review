<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사회인 야구 데이터 웹사이트</title>
    <link rel="stylesheet" href="css/styles_data.css">
    <script defer src="script.js"></script>
</head>
<body>
    <header>
        <div class="logo">
            <h1>Logo</h1>
        </div>
        <nav>
            <ul>
                <li><a href="index.html">홈</a></li>
                <li><a href="#">STAT BUZZ</a></li>
                <li><a href="#">선수기록</a></li>
                <li><a href="#">팀기록</a></li>
                <li><a href="#">선수검색</a></li>
                <li><a href="#">역대기록</a></li>
                <li><a href="#">STAT Dic</a></li>
                <li><a href="#">투수 VS 타자</a></li>
            </ul>
        </nav>
    </header>
    <main>
       
        <div class="bottom-row">
            <div class="tabs">
                <button class="tablink" onclick="openTab(event, '타격기록')">타격 기록</button>
                <button class="tablink" onclick="openTab(event, '투수기록')">투수 기록</button>
            </div>
            <div id="타격기록" class="tabcontent">
                <h2>타격 기록</h2>
                <table>
                    <thead>
                        <tr>
                            <th>선수명</th>
                            <th>팀명</th>
                            <th>경기</th>
                            <th>타석</th>
                            <th>안타</th>
                            <th>홈런</th>
                            <th>타점</th>
                            <th>도루</th>
                            <th>타율</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>홍길동</td>
                            <td>팀A</td>
                            <td>10</td>
                            <td>40</td>
                            <td>15</td>
                            <td>2</td>
                            <td>10</td>
                            <td>5</td>
                            <td>0.375</td>
                        </tr>
                        <!-- 다른 데이터 행들 -->
                    </tbody>
                </table>
            </div>
            <div id="투수기록" class="tabcontent">
                <h2>투수 기록</h2>
                <table>
                    <thead>
                        <tr>
                            <th>선수명</th>
                            <th>팀명</th>
                            <th>경기</th>
                            <th>이닝</th>
                            <th>승</th>
                            <th>패</th>
                            <th>세이브</th>
                            <th>삼진</th>
                            <th>평균자책점</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>김철수</td>
                            <td>팀B</td>
                            <td>12</td>
                            <td>45.2</td>
                            <td>3</td>
                            <td>1</td>
                            <td>5</td>
                            <td>35</td>
                            <td>2.50</td>
                        </tr>
                        <!-- 다른 데이터 행들 -->
                    </tbody>
                </table>
            </div>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 사회인 야구 데이터 웹사이트</p>
    </footer>
</body>
<script>
    function openTab(evt, tabName) {
    var i, tabcontent, tablinks;

    // 모든 탭 콘텐츠를 숨기기
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // 모든 탭 링크의 active 클래스를 제거하기
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // 선택한 탭 콘텐츠를 표시하고, 현재 탭 링크에 active 클래스 추가하기
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}

// 기본적으로 첫 번째 탭을 열기
document.addEventListener("DOMContentLoaded", function() {
    document.querySelector(".tablink").click();
});
</script>
</html>


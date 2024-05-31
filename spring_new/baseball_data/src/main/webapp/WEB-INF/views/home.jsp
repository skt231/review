<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사회인 야구 데이터 웹사이트</title>
    <link rel="stylesheet" href="css/styles_home.css">
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
                <li><a href="data.html">선수기록</a></li>
                <li><a href="rank.html">팀순위</a></li>
                <li><a href="search.html">선수검색</a></li>
                <li><a href="#">투수 VS 타자</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <div class="top-row">
            <section class="search">
                <h2>선수검색</h2>
            </section>
            <aside class="login">
                <h2>로그인</h2>
            </aside>
        </div>
        <div class="bottom-row">
            <section class="news">
                <h2>News</h2>
            </section>
            <aside class="ranking">
                <h2>순위표</h2>
            </aside>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 사회인 야구 데이터 웹사이트</p>
    </footer>
</body>
</html>

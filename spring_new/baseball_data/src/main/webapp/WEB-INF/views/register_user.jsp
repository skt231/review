<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f9f9f9;
            margin: 0;
        }
        .signup-container {
            width: 400px;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #4CAF50;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
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
    <div class="signup-container">
        <h1>회원가입</h1>
        <form action="/submit_signup" method="POST">
            <label for="username">사용자 이름</label>
            <input type="text" id="username" name="username" required>

            <label for="email">이메일</label>
            <input type="email" id="email" name="email" required>

            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" required>

            <label for="confirm-password">비밀번호 확인</label>
            <input type="password" id="confirm-password" name="confirm-password" required>

            <button type="submit">가입하기</button>
        </form>
    </div>
</main>
</body>
</html>

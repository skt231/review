<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Player Search</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
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
    <h1>선수 검색</h1>
    <input type="text" id="playerName" placeholder="선수이름">
    <button onclick="searchPlayer()">검색</button>
    <table>
        <thead>
            <tr>
                <th>선수명</th>
                <th>생년월일</th>
                <th>최근활동시즌</th>
                <th>소속팀</th>
            </tr>
        </thead>
        <tbody id="playerTableBody">
            <!-- Results will be appended here -->
        </tbody>
    </table>
</main>
    <script src="script.js"></script>
</body>
<script>
    // Sample data
const players = [
    { name: "홍길동", birthDate: "1990-01-01", recentSeason: "2023", team: "팀 A" },
    { name: "김철수", birthDate: "1992-05-12", recentSeason: "2022", team: "팀 B" },
    { name: "박영희", birthDate: "1988-11-30", recentSeason: "2021", team: "팀 C" },
    // Add more player data here
];

function searchPlayer() {
    const input = document.getElementById('playerName').value.toLowerCase();
    const filteredPlayers = players.filter(player => player.name.toLowerCase().includes(input));

    const tableBody = document.getElementById('playerTableBody');
    tableBody.innerHTML = ''; // Clear previous results

    filteredPlayers.forEach(player => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${player.name}</td>
            <td>${player.birthDate}</td>
            <td>${player.recentSeason}</td>
            <td>${player.team}</td>
        `;
        tableBody.appendChild(row);
    });
}

</script>
</html>

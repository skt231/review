<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>순위표</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .highlight {
            font-weight: bold;
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
    <h1>팀 순위표</h1>
    <table>
        <thead>
            <tr>
                <th>순위</th>
                <th>팀</th>
                <th>경기수</th>
                <th>승</th>
                <th>패</th>
                <th>무</th>
                <th class="highlight">승률</th>
                <th>게임차</th>
                <th>연속</th>
                <th>출루율</th>
                <th>장타율</th>
                <th>최근 10경기</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>KIA</td>
                <td>54</td>
                <td>33</td>
                <td>20</td>
                <td>1</td>
                <td class="highlight">0.623</td>
                <td>0.0</td>
                <td>4승</td>
                <td>0.365</td>
                <td>0.444</td>
                <td>6승-4패-0무</td>
            </tr>
            <tr>
                <td>2</td>
                <td>LG</td>
                <td>56</td>
                <td>31</td>
                <td>23</td>
                <td>2</td>
                <td class="highlight">0.574</td>
                <td>2.5</td>
                <td>6승</td>
                <td>0.376</td>
                <td>0.402</td>
                <td>7승-3패-0무</td>
            </tr>
            <tr>
                <td>3</td>
                <td>두산</td>
                <td>57</td>
                <td>31</td>
                <td>25</td>
                <td>1</td>
                <td class="highlight">0.564</td>
                <td>3.0</td>
                <td>1승</td>
                <td>0.349</td>
                <td>0.435</td>
                <td>6승-3패-1무</td>
            </tr>
            <tr>
                <td>4</td>
                <td>삼성</td>
                <td>54</td>
                <td>28</td>
                <td>25</td>
                <td>1</td>
                <td class="highlight">0.528</td>
                <td>5.0</td>
                <td>4패</td>
                <td>0.348</td>
                <td>0.407</td>
                <td>3승-7패-0무</td>
            </tr>
            <tr>
                <td>5</td>
                <td>NC</td>
                <td>54</td>
                <td>27</td>
                <td>26</td>
                <td>1</td>
                <td class="highlight">0.509</td>
                <td>6.0</td>
                <td>6승</td>
                <td>0.367</td>
                <td>0.414</td>
                <td>2승-8패-0무</td>
            </tr>
            <tr>
                <td>6</td>
                <td>SSG</td>
                <td>54</td>
                <td>25</td>
                <td>28</td>
                <td>1</td>
                <td class="highlight">0.472</td>
                <td>8.0</td>
                <td>8패</td>
                <td>0.341</td>
                <td>0.390</td>
                <td>2승-8패-0무</td>
            </tr>
            <tr>
                <td>7</td>
                <td>KT</td>
                <td>54</td>
                <td>24</td>
                <td>29</td>
                <td>1</td>
                <td class="highlight">0.453</td>
                <td>9.0</td>
                <td>1패</td>
                <td>0.358</td>
                <td>0.412</td>
                <td>6승-4패-0무</td>
            </tr>
            <tr>
                <td>8</td>
                <td>한화</td>
                <td>53</td>
                <td>23</td>
                <td>30</td>
                <td>0</td>
                <td class="highlight">0.442</td>
                <td>9.5</td>
                <td>4승</td>
                <td>0.346</td>
                <td>0.398</td>
                <td>7승-3패-0무</td>
            </tr>
            <tr>
                <td>9</td>
                <td>키움</td>
                <td>52</td>
                <td>22</td>
                <td>30</td>
                <td>0</td>
                <td class="highlight">0.423</td>
                <td>10.5</td>
                <td>2승</td>
                <td>0.337</td>
                <td>0.390</td>
                <td>6승-4패-0무</td>
            </tr>
            <tr>
                <td>10</td>
                <td>롯데</td>
                <td>52</td>
                <td>20</td>
                <td>32</td>
                <td>0</td>
                <td class="highlight">0.400</td>
                <td>11.5</td>
                <td>2패</td>
                <td>0.336</td>
                <td>0.403</td>
                <td>5승-4패-1무</td>
            </tr>
        </tbody>
    </table>
    
</main>
</body>
</html>

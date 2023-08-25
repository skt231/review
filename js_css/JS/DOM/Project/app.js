const p1Btn = document.querySelector('#p1Btn');
const p2Btn = document.querySelector('#p2Btn');
const reset = document.querySelector('#reset');
const p1Dp = document.querySelector('#p1Dp');
const p2Dp = document.querySelector('#p2Dp');
const playToSelect = document.querySelector('#playto')

let p1Score = 0;
let p2Score = 0;
let winningScore = 0;
let isGameOver = false;

p1Btn.addEventListener('click', function () {
    if (!isGameOver) {
        if (p1Score < winningScore) {
            p1Score += 1;
        } else {
            isGameOver = true;
            p1Dp.classList.add('has-text-success');
            p2Dp.classList.add('has-text-danger');
            p1Btn.disabled = true;
            p2Btn.disabled = true;
        }
        p1Dp.textContent = p1Score;
    }

})
p2Btn.addEventListener('click', function () {
    if (!isGameOver) {
        if (p2Score < winningScore) {
            p2Score += 1;
        } else {
            isGameOver = true;
            p2Dp.classList.add('has-text-success');
            p1Dp.classList.add('has-text-danger');
            p1Btn.disabled = true;
            p2Btn.disabled = true;
        }
        p2Dp.textContent = p2Score;
    }
})

playToSelect.addEventListener('change', function () {
    winningScore = parseInt(this.value);
    resetFunc();
})
reset.addEventListener('click', resetFunc)

function resetFunc() {
    isGameOver = false;
    p1Score = 0;
    p2Score = 0;
    p1Dp.textContent = p1Score;
    p2Dp.textContent = p1Score;
    p1Dp.classList.remove('has-text-success', 'has-text-danger');
    p2Dp.classList.remove('has-text-success', 'has-text-danger');
    p1Btn.disabled = false;
    p2Btn.disabled = false;
}

// //innerText:
// innerText는 CSS에 의해 숨겨진 요소의 텍스트를 반환하지 않습니다. 즉, CSS display: none이 적용된 요소의 텍스트는 반환되지 않습니다.
// innerText는 요소의 스타일에 따라 렌더링되는 텍스트를 반환하므로, 브라우저가 텍스트를 어떻게 표시하는지를 기준으로 콘텐츠를 제공합니다.
// textContent와 달리 innerText는 스크립트를 실행하지 않기 때문에 스크립트 태그의 내용도 반환하지 않습니다.
// innerText 역시 XSS 공격으로부터 보호하기 위한 목적으로 사용됩니다.

// const element = document.getElementById('myElement');

// console.log(element.innerText);
// 출력: "This is bold text."

//textContent:
// textContent는 HTML 요소의 텍스트 콘텐츠를 나타냅니다.
// HTML 태그를 해석하지 않고 그대로 텍스트로 반환합니다. 즉, 태그가 텍스트로 출력됩니다.
// XSS(Cross-Site Scripting) 공격을 방지하기 위해서도 주로 사용됩니다.
// HTML 요소 내부의 모든 텍스트를 가져오거나 설정할 수 있습니다.

// innerHTML:
// innerHTML은 HTML 요소의 내부 HTML 마크업을 나타냅니다.
// HTML 태그를 해석하고 해당 요소의 내용을 HTML 마크업으로 반환합니다.
// 주의: 외부에서 제공된 HTML이나 사용자 입력을 innerHTML에 할당하는 것은 보안상 위험할 수 있습니다.

// 따라서 textContent는 텍스트로 작성된 내용을 가져오거나 설정할 때,
//  innerHTML은 내부에 포함된 HTML 마크업을 가져오거나 설정할 때 주로 사용됩니다.
// const element = document.getElementById('myElement');

// console.log(element.textContent);
// // 출력: "This is bold text."

// console.log(element.innerHTML);
// // 출력: "<p>This is <strong>bold</strong> text.</p>"


const allLinks = document.querySelectorAll('a');
// for (let link of allLinks) {
//     link.innerText = 'I AM A LINK!!!!'
// }
for (let link of allLinks) {
    link.style.color = 'rgb(0, 108, 134)';
    link.style.textDecorationColor = 'magenta';
    link.style.textDecorationStyle = 'wavy'
}
// attribute...//getAttribute()
const firstLink=document.querySelector('a');
firstLink.getAttribute('href')
// setAttirbute()
firstLink.setAttribute('href','http://www.google.com');


//change style
// h1.style.color='green'
//h1.style.border='2px solid pink'
const AllLink=document.querySelector('a');
// for(let link of allLinks){
//     link.style.color='rgb(0,108,134)';
        // link.style.textDecorationColor='magenta';
        // link.style.textDecoration='wavy';
// }
// window.getComputedStyle(h1).fontSize    ....style을 가저욤
AllLink.style.borderRadius

// classList
const h2=document.querySelector('h2')
h2.classList.add('purple')
h2.classList.add('border')
// h2.classList.remove('border')
// h2.classList.contains('border')//true /
// h2.classList.toggle('pa')//false//클래스가 이미 존재하면 제거하고, 존재하지 않으면 추가



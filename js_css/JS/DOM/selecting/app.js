// const allImages=document.getElementsByTagName('img');
// for(img of allImages){
//     console.log(img);
// }
const squareImgs=document.getElementsByClassName('square');
// for(img of squareImgs){
//     console.log(img);
// }
// querySelector은 해당 Id,class,element들의 첫번쨰만 보여줌
// const querySelectImgs=document.querySelector('p');
// console.log(querySelectImgs);
// querySelectorAll은 해당 Id,class,element들의 모든 걸 보여줌
const links = document.querySelectorAll('p a');

for (let link of links) {
    console.log(link.href)
}

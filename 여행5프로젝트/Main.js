window.onload = function(){
function addEvent(){
    var box = document.getElementsByClassName("boxes");
    for(let i =0; i<box.length; i++){
        var boxes = box[i];
        boxes.addEventListener('click', getInnerHtml)
    }
};

function getInnerHtml(event){
    var clicked = event.target;
    var get = clicked.innerHTML;
    var placeName = document.getElementById("placeName");
    placeName.innerHTML = get; 
}
document.getElementById("firstA").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Seoul.html"></object>';}

document.getElementById("firstB").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Gyeonggi.html"></object>';}

document.getElementById("twoB").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Gangwon.html"></object>';}

document.getElementById("threeB").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Chungcheongnam.html"></object>';}

document.getElementById("fourB").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Chungcheongbuk.html"></object>';}

document.getElementById("fiveB").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Gyeongsangbuk.html"></object>';}

document.getElementById("sixB").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Jeollabuk.html"></object>';}

document.getElementById("sevenB").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Jeollanam.html"></object>';}

document.getElementById("eightB").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Gyeongsangnam.html"></object>';}

document.getElementById("nineB").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Jeju.html"></object>';}

document.getElementById("tenB").onclick = function(){
document.getElementById("info").innerHTML='<object type="text/html" data="Incheon.html"></object>';}

addEvent();
}

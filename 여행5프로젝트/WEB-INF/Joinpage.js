/**
 * 
 */
function checkPassword(event){
    const password = document.getElementById("password");
    const passwordC = document.getElementById("passwordC");
    const passwordLength = document.getElementById("passwordLength");
    const check = document.getElementById("check")
    const clicked = event.target;
    console.log(passwordC.value)
    console.log(password.value)
    if(password.value.length <6 || password.value.length >16){
        passwordLength.innerHTML = "비밀번호를 확인하세요"
        passwordLength.style.color = "red";
        passwordLength.classList.remove("required")
        passwordLength.classList.add()
    }else if(password.value.length >6 || password.value.length <16){
        passwordLength.innerHTML = ""
    }
}

function addevent(){
    const passwordC = document.getElementById("passwordC");
    const password = document.getElementById("password");
    passwordC.addEventListener("blur", checkPassword);
    password.addEventListener("blur", checkPassword);
}
addevent()
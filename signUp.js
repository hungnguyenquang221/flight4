const UserName = document.querySelector(".userName");
const PassWord = document.querySelector(".password");
const btn = document.querySelector(".signupbtn");

btn.addEventListener("click", (e) => {
  e.preventDefault();
  if (UserName.value === "" || PassWord.value === "") {
    alert("vui lòng không để trống");
  } else {
    const user = {
      username: UserName.value,
      password: PassWord.value,
    };
    let json = JSON.stringify(user);
    localStorage.setItem(UserName.value, json);
    alert("Đăng ký thành công");
    window.location.href = "../LogIn/LogIn.html";
  }
});

const logInUser = document.querySelector(".Username");
const loginPass = document.querySelector(".Password");
const btnLogin = document.querySelector(".Login");

btnLogin.addEventListener("click", (e) => {
  e.preventDefault();
  if (logInUser.value === "" || loginPass.value === "") {
    alert("vui lòng không để trống");
  } else {
    const user = JSON.parse(localStorage.getItem(logInUser.value));
    if (
      user.username === logInUser.value &&
      user.password === loginPass.value
    ) {
      alert("đăng nhập thành công ");
      window.location.href = "../html.html";
    } else {
      alert("Đăng nhập thất bại");
    }
  }
});

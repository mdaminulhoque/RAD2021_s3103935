<template>
  <div class="main">
    <div class="header">
      <div class="close-btn">
        <img block width="15" src="../../assets/canel.png" />
      </div>
      <p class="login-heading">LOGIN</p>
    </div>
    <p class="login-desc">Login in to enter the wonderland of fashion...</p>
    <div class="underline-tile"></div>
    <input type="text" class="input-username" placeholder="Username" />
    <input type="text" class="input-password" placeholder="Password" />
    <b-button class="login-btn">Login</b-button>
    <div class="underline-btn"></div>
    <p class="forgot-password-txt">Forgot passsword?</p>
    <div class="bold-tile"></div>
    <div class="blank-space-cover"></div>
  </div>
</template>

<script>
export default {
  name: "Login",
};
</script>

<style scoped>
html,
body {
  height: 100%;
  background-color: #f7f3f3;
}
.main {
  background: #f7f3f3;
  display: flex;
  flex-direction: column;
}

.header {
  display: flex;
  flex-direction: row;
  margin-top: 50px;
  margin-bottom: 20px;
}

.close-btn {
  margin-left: 20px;
}

.login-heading {
  text-align: center;
  font-size: 20px;
  position: absolute;
  left: 40%;
}

input[type="text"] {
  background: transparent;
  border: none;
  border-bottom: 1px solid #868585;
  padding: 10px 10px;

  outline: none;
  outline-style: none;
  outline-offset: 0;
  border-top: none;
  border-left: none;
  border-right: none;
  opacity: 10;
}

.login-desc {
  width: 80%;
  font-size: 35px;
  margin-left: 20px;
  margin-top: 30px;
}

.underline-tile {
  width: 55px;
  height: 5px;
  background: black;
  margin-left: 20px;
}

.input-username {
  margin-top: 100px;
  margin-left: 20px;
  margin-right: 20px;
}

.input-password {
  margin-left: 20px;
  margin-right: 20px;
  margin-top: 25px;
}

.login-btn {
  height: 50px;
  background: #000000;
  border: 0px solid #000000;
  margin-left: 20px;
  margin-right: 20px;
  margin-top: 80px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.underline-btn {
  margin-left: 20px;
  margin-right: 20px;
  height: 1.5px;
  background: #adacac;
  margin-top: 100px;
}

.forgot-password-txt {
  text-align: center;
  font-size: 21px;
  margin-top: 50px;
  color: #444444;
}

.bold-tile {
  height: 5px;
  background: #cccccc;
  border: 0px solid #000000;
  margin-top: 25px;
  margin-left: 135px;
  margin-right: 135px;
}

.blank-space-cover {
  height: 80px;
}
</style>

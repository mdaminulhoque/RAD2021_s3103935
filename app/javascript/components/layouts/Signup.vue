<template>
  <div class="main">
    <div class="header">
      <div class="close-btn">
        <img block width="15" src="../../assets/canel.png" />
      </div>
      <p class="signup-heading">SIGN UP</p>
    </div>
    <p class="signup-desc">
      Join us ... to get the best that the world of fashion can offer.
    </p>
    <div class="underline-tile"></div>
    <input type="text" class="input-username" placeholder="Username" />
    <input type="text" class="input-password" placeholder="Password" />
    <input
      type="text"
      class="input-repassword"
      placeholder="Re-enter Password"
    />
    <input type="text" class="input-email" placeholder="Email" />
    <div class="terms-and-conditions">
      <input
        type="checkbox"
        class="tnccheck"
        id="vehicle1"
        v-model="status"
        value=""
      />
    </div>
    <b-button class="login-btn">Login</b-button>
    <div class="underline-btn"></div>
    <p class="forgot-password-txt">Already a user?</p>
    <div class="bold-tile"></div>
    <div class="blank-space-cover"></div>
  </div>
</template>

<script>
export default {
  name: "Signup",
  data() {
    return {
      status: "not_accepted",
    };
  },
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

.signup-heading {
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

.signup-desc {
  width: 90%;
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

.input-repassword {
  margin-top: 25px;
  margin-left: 20px;
  margin-right: 20px;
}

.input-email {
  margin-left: 20px;
  margin-right: 20px;
  margin-top: 25px;
}

.terms-and-conditions {
  background: #858383;
  width: 30px;
  height: 30px;
}

.tnccheck {
  border-radius: 0px;
  width: 100%;
  height: 100%;
}

input[type="checkbox"] {
  background: rgb(0, 0, 0);
}

input[type="checkbox"]:after:checked {
  font-size: 15px;
  text-align: center;
  line-height: 15px;
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

<template>
  <div class="main">
    <div class="header">
      <div class="close-btn">
        <img block width="15" src="../../assets/canel.png" />
      </div>
      <p class="login-heading">LOGIN</p>

      <input type="text" class="text-line" placeholder="Enter your email" />
    </div>
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
  width: 100%;
  background: transparent;
  border: none;
  border-bottom: 1px solid #000000;
  padding: 2px 5px;
  margin-right: 20px;
}
</style>

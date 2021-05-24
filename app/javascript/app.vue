<template>
  <div id="app">
    <mq-layout mq="sm">
      <Login />
    </mq-layout>
  </div>
</template>

<script>
import Home from "./components/Home.vue";
import Collection from "./components/Collection.vue";
import Login from "./components/layouts/Login.vue";

export default {
  components: { Home, Collection, Login },
  data: function() {
    return {
      message: "Hello Vue!",
    };
  },
};
</script>

<style scoped>
body {
  background-color: #f7f3f3;
}

p {
  font-size: 2em;
  text-align: center;
}
</style>

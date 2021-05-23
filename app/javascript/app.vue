<template>
  <div id="app">
    <mq-layout mq="sm">
      <Collection />
    </mq-layout>
  </div>
</template>

<script>
import Home from "./components/Home.vue";
import Collection from "./components/Collection.vue";

export default {
  components: { Home, Collection },
  data: function() {
    return {
      message: "Hello Vue!",
    };
  },
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>

<template>
  <div id="app">
    <p>{{ content }}</p>
  </div>
</template>

<script>
export default {
  props: ["content"]
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>

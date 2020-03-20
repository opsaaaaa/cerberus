<template>
  <ul>
    <li 
        v-for="(val, key) in content"
        >{{ key }} : {{ val }}</li>
  </ul>
</template>

<script>
export default {
  props: ["content"]
}
</script>


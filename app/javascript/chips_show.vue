<template>
  <div>
    <div v-html="content"></div>
  </div>
</template>

<script>
export default {
  props: ["mortises", "tenons", "layout"],
  data: function() {
    var div = document.createElement('div')
    div.innerHTML = this.layout;
    
    var result = {};
    for (const [key, val] of Object.entries(this.mortises)) {
      div.querySelector(val).innerHTML = this.tenons[key];
    }
    
    result.content = div.innerHTML;
    return result;
  },
}
</script>


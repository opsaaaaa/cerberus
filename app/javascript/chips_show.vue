<template>
  <div>
    <div v-html="content"></div>
  </div>
</template>

<script>
export default {
  props: ["mortises", "tenons", "layout"],
  data: function() {

    // TODO: seprate this out into a node package or something
    var div = document.createElement('div')
    div.innerHTML = this.layout;
    for (const [key, val] of Object.entries(this.mortises)) {
      div.querySelector(val).innerHTML = this.tenons[key];
    }
    
    return {content: div.innerHTML};
  },
}
</script>


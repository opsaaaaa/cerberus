<template>
  <div>

    <div class="field">
      <label>Name</label><br>
      <input 
        v-model="document.name" 
        placeholder="name"
        >
    </div>
  
    <div class="field">
      <label>Template</label><br>
      <input 
        v-model="document.template_id" 
        placeholder="template"
        >
    </div>

  </div>
</template>

<script>
export default {
  props: ["document", "templates"],
  data: function() {
    return {document: this.document, templates: this.templates}
  }
}
</script>


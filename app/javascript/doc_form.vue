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

    <div class="actions">
      <button
        v-on:click="saveDocument" 
        class="btn btn-primary flex"
        >Save</button>
    </div>

  </div>
</template>

<script>
export default {
  props: ["document", "templates"],
  data: function() {
    return {document: this.document, templates: this.templates}
  },
  methods: {
    saveDocument: function() {
      if (this.document.id == null) {
        this.$http.post('/documents', {document: this.document})
          .then(response => {
            console.log(response);
          }, response => {
            console.log(response);
          })
      } else {
        this.$http.put(`/documents/${this.document.id}`, {document: this.document})
          .then(response => {
            console.log(response);
          }, response => {
            console.log(response);
          })
      }
    }
  }
}
</script>


<template>
  <div>

    <div v-for="(tenon, index) in content">
      <div class="field flex">
        <div class="flex mr-1" 
          ><input
            v-model="tenon.key" 
            placeholder="name"
            /></div>
        <div class="flex mr-1" 
          ><input
          v-model="tenon.value" 
          placeholder="name"
          /></div>
        <div class="flex mr-1" 
          ><button 
            class="btn flex" 
            v-on:click="removeTenon(index)"
            >Remove</button></div>
      </div>
    </div>

    <div class="actions">
      <button class="btn" v-on:click="addTenon">Add Item</button>
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
  props: ["document", "content", "templates"],
  data: function() {
    return {
      document: this.document, 
      content: this.content,
      templates: this.templates}
  },
  methods: {
    addTenon: function(){
      this.content.push({
        key: "",
        value: ""
      })
    },
    removeTenon: function(index){
      this.content.splice(index, 1)
    },
    saveDocument: function() {
      // TODO this dose not work
      this.document.content = JSON.stringify(this.content)
      // instead leave document.content blank and add it after the fact. 

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



<script>
export default {
  props: ["content", "properties"],
  data: function() {
    return {...this.properties, ...this.getContentData()};
  },
  methods: {
    getContentData: function(){
      let output = {};
      this.content.forEach( item => {
        output[item.key] = item.value;
      });
      return output;
    },
    getNotesData: function(){

    }
  }
}
</script>

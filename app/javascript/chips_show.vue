
<script>
export default {
  props: ["content", "properties"],
  data: function() {
    let output = {};
    
    // TODO: move this to, this.getContentData
    this.content.forEach( item => {
      output[item.key] = item.value;
    });
    
    // TODO: move to, this.getPropertiesData
    for (let [key, val ] of Object.entries(this.properties)) {
      output[key] = val;
    }

    // TODO: add notes the same way as above ^^.

    return output;
  },
  methods: {
    getPropertiesData: function(){

    },
    getContentData: function(){

    },
    getNotesData: function(){

    }
  }
}
</script>


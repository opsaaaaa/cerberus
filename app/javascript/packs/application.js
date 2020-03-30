// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("stylesheets/application.scss")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import Vue from 'vue/dist/vue.esm'
import VueResource from 'vue-resource'
import TurbolinksAdapter from 'vue-turbolinks'

Vue.use(TurbolinksAdapter);
Vue.use(VueResource);

// import componets
import App from '../app.vue'
import ChipsShow from '../chips_show.vue'
import ChipsData from '../chips_data.vue'
import DocForm from '../doc_form.vue'

// Declare vue components  
Vue.component('app', App)
Vue.component('chips-show', ChipsShow)
Vue.component('doc-form', DocForm)
Vue.component('chips-data', ChipsData)

// Define the app mounting element
document.addEventListener('turbolinks:load', () => {
  Vue.http.headers.common['X-CSRF'] = document
    .querySelector('meta[name="csrf-token"]')
    .getAttribute('content');
  const app = new Vue({ el: '[data-front="vue"]' });
})
import Vue from 'vue'
import Table from '../QuestionTable.vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import BootstrapVue from 'bootstrap-vue'

Vue.use(BootstrapVue)


document.addEventListener('DOMContentLoaded', () => {

  new Vue({
    el: '#questionTable',
    render: h => h(Table),
  })

});

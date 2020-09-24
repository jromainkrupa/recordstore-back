import Vue from 'vue';
import Router from 'vue-router';
import Signin from '@/components/Signin.vue'
import Signup from '@/components/Signup.vue'
import Records from '@/components/artist/Record.vue'
import Artists from '@/components/artist/Artist.vue'


Vue.use(Router);

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Signin',
      component: Signin
    },
    {
      path: '/Signup',
      name: 'Signup',
      component: Signup
    },
    {
      path: '/records',
      name: 'Records',
      component: Records
    },
    {
      path: '/artist',
      name: 'Artists',
      component: Artists
    }
  ],
});

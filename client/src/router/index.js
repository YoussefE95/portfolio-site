import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/lotr',
      name: 'lotr',
      component: () => import('../views/LotrView.vue')
    },
    {
      path: '/moon-trek',
      name: 'moon-trek',
      component: () => import('../views/moon-trek/HomeView.vue')
    },
    {
      path: '/moon-trek/upload',
      name: 'moon-upload',
      component: () => import('../views/moon-trek/UploadView.vue')
    },
    {
      path: '/moon-trek/registration',
      name: 'moon-registration',
      component: () => import('../views/moon-trek/RegistrationView.vue')
    },
    {
      path: '/moon-trek/model',
      name: 'moon-model',
      component: () => import('../views/moon-trek/ModelView.vue')
    }
  ]
})

export default router

import { createRouter, createWebHashHistory } from 'vue-router'

import Equipmentlist from '../screens/equipmentlist/EquipmentList.vue'

const routes = [
  { path: '/', name: 'EquipmentList', component: Equipmentlist },
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
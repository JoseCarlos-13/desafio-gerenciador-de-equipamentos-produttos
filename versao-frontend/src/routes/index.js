import { createRouter, createWebHashHistory } from 'vue-router'

import Equipmentlist from '../screens/equipmentlist/EquipmentList.vue'
import EquipmentForm from '../screens/equipmentform/EquipmentForm.vue'

const routes = [
  { path: '/', name: 'EquipmentList', component: Equipmentlist },
  { path: '/equipmentform', name: 'EquipmentForm', component: EquipmentForm }
  // { path: '/', name: 'EquipmentList', component: Equipmentlist },
  // { path: '/', name: 'EquipmentList', component: Equipmentlist },
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
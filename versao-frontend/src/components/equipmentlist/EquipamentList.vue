<template lang="">
  <div>
    <!-- <h1>EquipmentListComponent</h1> -->
    <v-table>
      <thead>
        <tr>
          <th v-for="tableLabel in tableLabels" :key="tableLabel.id">
            {{ tableLabel }}
          </th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="equipment in equipmentList" :key="equipment.id">
          <th>{{ equipment.name }}</th>
          <th>{{ equipment.brand }}</th>
          <th>{{ equipment.equipment_type }}</th>
          <th>{{ equipment.code }}</th>
          <th><img :src="equipment.equipment_photo" width="100"></th>
        </tr>
      </tbody>
    </v-table>
  </div>
</template>

<script>
import api_instance from '@/main';

export default {
  data() {
      return {
        equipmentList: '',
        tableLabels: ['Name', 'Brand', 'Type', 'Code', 'Photo']
      }
    },

    methods: {
      loadEquipment () {
        api_instance.get('/equipment').then(response => {
          this.equipmentList = response.data
        })
      }
    },

    mounted () {
      this.loadEquipment()
    }
}
</script>

<style>

  ul {
    list-style: none;
  }
</style>
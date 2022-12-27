<template lang="">
  <div>
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
          <th>{{ equipment.local }}</th>
          <th>{{ equipment.equipment_type }}</th>
          <th>{{ equipment.code }}</th>
          <!-- <th><img :src="equipment.equipment_photo" width="100"></th> -->
          <th>
            <v-btn color="primary" size="small"
                   @click="editFormRouter(equipment)">Edit</v-btn>
            <v-btn color="error" size="small"
                   @click="removeEquipment(equipment)">
              Remove
            </v-btn>
          </th>
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
        // tableLabels: ['Name', 'Brand', 'Local', 'Type', 'Code', 'Photo', 'Actions']
        tableLabels: ['Name', 'Brand', 'Local', 'Type', 'Code', 'Actions']
      }
    },

    methods: {
      loadEquipment () {
        api_instance.get('/equipment').then(response => {
          this.equipmentList = response.data
        })
      },

      removeEquipment (equipment) {
        api_instance.delete(`/equipment/${equipment.id}`).then(() => {
          this.$router.go(this.$router.currentRoute)
        })
      },

      editFormRouter (equipment) {
        this.$router.push(`/equipmentform/${equipment.id}`)
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
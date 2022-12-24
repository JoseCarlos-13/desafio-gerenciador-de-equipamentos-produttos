<template>
  <div>
    <h1>EquipmentListScreen</h1>
    <p>{{ equipment }}</p>
  </div>
</template>

<script>
import api_instance from '@/main';

  export default {
    data() {
      return {
        equipment: ''
      }
    },

    methods: {
      loadEquipments () {
        api_instance.get('/equipment').then(response => {
          this.equipment = response
        })
      }
    },

    mounted () {
      this.loadEquipments()
    }
  }
</script>

<style>

</style>
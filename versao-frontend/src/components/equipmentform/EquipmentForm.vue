<template lang="">
  <div>
    <h1>EquipmentForm</h1>
  </div>
</template>
<script>
  import api_instance from '@/main';

export default {
  data() {
      return {
        equipmentList: ''
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
<style lang="">
    
</style>
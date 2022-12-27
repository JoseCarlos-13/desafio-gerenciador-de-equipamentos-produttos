<template lang="">
  <div>
    <v-form>
      <v-text-field
        v-model="local.name"
        :counter="10"
        label="Name"
        required></v-text-field>
      <v-btn @click="createLocal()">Create Local</v-btn>
    </v-form>
  </div>
</template>

<script>
  import api_instance from '@/main';
  export default {
    data () {
      return {
        local: {
          name: ''
        }
      }
    },

    methods: {
      createLocal () {
        api_instance.post('/locations', { local: this.local })
                    .then(response => response)
      }
    }
  }
</script>

<style>
    
</style>
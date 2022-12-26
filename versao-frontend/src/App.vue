<template>
  <div>
    <v-list>
      <v-list-item>
        <v-btn><router-link to="/">equipmentlist</router-link></v-btn>
        <v-btn><router-link to="/equipmentform">equipmentform</router-link></v-btn>
        <v-btn><router-link to="/equipmentform">equipmentform</router-link></v-btn>
        <v-btn><router-link to="/equipmentform">equipmentform</router-link></v-btn>
      </v-list-item>
    </v-list>
    <router-view></router-view>
  </div>
</template>

<script>

export default {
  name: 'App',
  components: {
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

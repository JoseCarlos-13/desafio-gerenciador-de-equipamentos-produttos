<template>
  <div>
    <v-list id="menu-list">
      <v-list-item class="menu-item">
        <v-btn class="menu-button"><router-link to="/">equipmentlist</router-link></v-btn>
      </v-list-item>
      <v-list-item class="menu-item">
        <v-btn class="menu-button"><router-link to="/equipmentform">equipmentform</router-link></v-btn>
      </v-list-item>
      <v-list-item class="menu-item">
        <v-btn class="menu-button"><router-link to="/localform">localform</router-link></v-btn>
      </v-list-item>
    </v-list>
    <v-row>
      <v-col>
        <router-view></router-view>
      </v-col>
    </v-row>
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

  #menu-list {
    display: flex;
    flex-direction: row;
    margin: auto 10px auto 10px !important;
    justify-content: center;
  }

  #menu-list > .menu-item > .menu-button {
    background-color: rgb(126, 8, 8);
  }
</style>

<template>
  <div class="inlogg">
    <h1>inlogg</h1>
    <!-- <form action="/login" method="post"> -->
      <input name="username" placeholder="username" type="text" v-model="username">
      <input name="password" placeholder="password" type="password" v-model="password">
      <input value="submit" type="submit">
    <!-- </form> -->
  </div>
</template>

<script>
export default {
  data: () => ({
    username: null,
    password: null
  })
}
</script>


<style lang="scss">
@import "scss/main.scss";



  div.inlogg {
    position: fixed;
    display: flex;
    z-index: 9999;
    width: 80vw;
    height: 80vh;
    background: rgba($color: #000000, $alpha: 0.6);

    form {
      background: white;
      margin: auto;
    }
  }
</style>
<template>
  <div class="register">
      <h1>
          register
      </h1>
    <!-- <form action="/register" method="post"> -->
      <input name="regUsername" placeholder="namn" type="text" v-model="regUsername">
      <input name="regPassword" placeholder="password" type="password" v-model="regPassword">
      <input value="submit" type="submit">

    
    <!-- </form> -->
  </div>
</template>

<script>
export default {
  data: () => ({
    regUsername: null,
    regPassword: null
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
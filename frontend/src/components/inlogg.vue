<template>
  <div class="inlogg">
    <form action="/login" method="post">
      <input name="username" placeholder="namn" type="text">
      <input name="password" placeholder="password" type="password">
      <input value="submit" type="submit">
    </form>
  </div>
</template>

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
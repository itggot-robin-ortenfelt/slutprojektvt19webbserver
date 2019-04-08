<template>
  <article>
    <div class="img" v-on:click="showProduct(item)">
      <img v-bind:src="'@/assets/products/' + item.imgFile" :alt="item.color">
    </div>
    <footer>
      <h2 class="title">{{ item.name }}</h2>
      <h3 class="price">{{ item.price }};-</h3>
    </footer>
  </article>
</template>

<script>
// export default {
//     name: "Item",
//     props: ['item'],
//     methods:
//     {
//         showProduct(item) {
//             // lägg till item som active product
//             this.$parent.activeProduct = item;
//             // toggla view.shoeProdukt
//             this.$parent.views.singleProduct = true;
//         }
//     },
// };
</script>

<style>
</style>
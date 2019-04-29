<template>
  <div>
    <header>
      <section class="center">
        <h1>BÄSTA SHOP</h1>
        <nav>
          <ul>
            <li>
              <a href>New</a>
            </li>
            <li>
              <a href>Brands</a>
            </li>
            <li>
              <a href>Shop</a>
            </li>
            <li>
              <a href>Settings</a>
            </li>
          </ul>
        </nav>
      </section>
    </header>
    <main>
      <section class="hero"></section>
      <section class="products">
        <div v-for="item in products" v-bind:key="item.clothingId">
          <h1>hunsaer</h1>
          <img src="@/assets/products/hoodie-blue.jpg">
        </div>
        <!-- huuuuuur -->
      </section>
    </main>

    <section class="footer"></section>
  </div>
</template>

<script>
// import clothing from "#DATABASE";
export default {
  name: "hoodies",
  data() {
    return {
      products: null
    };
  },
  methods: {
    async getClothing() {
      let res = await this.$http.get("/api/clothing");
      this.products = res.data;
    }
  },
  mounted: function() {
    this.getClothing();
  }
};
</script>


<template>
  <div id="app">
    <header>
      <section class="center">
        <h1>Sneaky Sunes Shoe Shop</h1>
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
        <div v-for="item in products" v-bind:key="item.clothingId" > <img  v-bind:src="item.clothingImg" :alt="item.color"></div> <!-- huuuuuur -->
      </section>

      <footer>footer</footer>
    </main>
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
      let res = await this.$http.get("http://localhost:4567");
      this.products = res.data;
    }
  },
  mounted: function() {
    this.getClothing()
  }
};
</script>


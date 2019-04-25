<template>
  <div id="app">
    <main>
      <section class="trending">
        <div class="shoes"> 
          <img src="../assets/shoesBackground.jpg">
        </div>
        <div class="hoodie">
          <img  src="../assets/hoodieBackground.jpg">
        </div>

        <header>
          <section>
            <div class="input">
              <input type="text">
            </div>
            <aside class="cart">
              <img src="@/assets/cart.png" alt="Shopping cart">
            </aside>
            <aside class="profile">
              <img src="@/assets/profile.png" alt="Profile">
            </aside>
          </section>
          <nav>
            <ul>
              <li>
                <a href><p>New</p></a>
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
        </header>
      </section>
      
      <section class="tops">
        <div>
          <h2>TOPS</h2>
        </div>
        <section class="kategories">
          
          <!-- <router-link tag="li" to="/hoodies">
            <a>/foo</a>
          </router-link> -->
          <a href="#">
            <div> tshirt</div>
          </a>
          <a href="#">
            <div> hoodie</div>
          </a>
          <a href="#">
            <div> jacket</div>
          </a>
          <a href="#">
            <div class="thicc"> sweatshitt</div>
          </a>
          <a href="#">
            <div class="thicc">  tanktop</div>
          </a>
        </section>
      </section>
      <section class="shoes">
        <div>
          <h2>SHOES</h2>
        </div>
        <section class="kategories">
          <a href="#">
            <img src alt="BILD">
          </a>
          <a href="#">
            <img src alt="BILD1">
          </a>
          <a href="#">
            <img src alt="BILD2">
          </a>
          <a href="#">
            <img src alt="BILD3">
          </a>
          <a href="#">
            <img src alt="BILD4">
          </a>
        </section>
      </section>
    </main>
    <section class="footer">FOTER</section>
  </div>
</template>

<script>
// import HelloWorld from "./components/HelloWorld.vue";
// import products from './assets/products';
// import Item from '@/components/items';

// export default {
//   name: "app",
//   components: {
//     Item
//   },
//   data(){
//     return{
//       products: products
//     }
//   }
// };
</script>

<style lang="scss">
@import "scss/main.scss";
</style>
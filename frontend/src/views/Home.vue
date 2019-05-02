<template>
  <div>
    <inlogg v-if="showLogin" />
    <register v-if="showRegister" />
    <main>
      <section class="trending">
        <div class="shoes">
          <img src="../assets/shoesBackground.jpg">
        </div>
        <div class="hoodie">
          <img src="../assets/hoodieBackground.jpg">
        </div>

        <header>
          <section>
            <div class="input">
              <input type="text">
            </div>
            <aside class="cart">
              <img src="@/assets/cart.png" alt="Shopping cart">
            </aside>
            <aside class="test" @click="showRegister = !showRegister">
              <img src="@/assets/cart.png" alt="Shopping cart">
            </aside>
            <aside class="profile" @click="showLogin = !showLogin">
              <img src="@/assets/profile.png" alt="Profile">
            </aside>
          </section>
          <nav>
            <ul>
              <li>
                <a href>
                  <p>New</p>
                </a>
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

      <section class="cloths">
        <div>
          <h2>TOPS</h2>
        </div>
        <section class="kategories">
          <div>
            <router-link tag="li" to="/tShirts">
              <a>LINK</a>
            </router-link>
          </div>

          <div>
            <router-link tag="li" to="/hoodies">
              <a>/foo</a>
            </router-link>
          </div>

          <a href="#">
            <div>jacket</div>
          </a>

          <a href="#">
            <div class="thicc">sweatshirt</div>
          </a>

          <a href="#">
            <div class="thicc">tanktop</div>
          </a>
        </section>

        <div>
          <h2>SHOES</h2>
        </div>
        <section class="kategories">
          <a href="#">
            <div>tshirt</div>
          </a>
          <a href="#">
            <div>hoodie</div>
          </a>
          <a href="#">
            <div>jacket</div>
          </a>
          <a href="#">
            <div class="thicc">sweatshirt</div>
          </a>
          <a href="#">
            <div class="thicc">tanktop</div>
          </a>
        </section>
      </section>
    </main>
    <section class="footer">FOTER</section>
  </div>
</template>

<script>
import inlogg from '@/components/inlogg.vue'
import register from '@/components/register.vue'

export default {
  name: "app",
  components: {
    inlogg,
    register
  },
  data(){
    return {
      showLogin: false,
      showRegister: false
    }
  }
};
</script>

<style lang="scss">
@import "scss/main.scss";
</style>
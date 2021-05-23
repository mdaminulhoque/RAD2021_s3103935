<template>
  <div class="main">
    <p class="home-text"></p>
    <div class="header">
      <Sidebar />
      <p class="collection-heading">women</p>
      <b-icon class="cart-icon" width="50" icon="handbag"></b-icon>
      <b-icon class="search-icon" width="50" icon="search"></b-icon>
    </div>
    <div class="main-body">
      <div class="top-banner">
        <b-icon class="add-icon-banner" icon="plus"></b-icon>
        <p class="top-banner-title">Winter Vibes</p>
        <p class="top-banner-desc">Cold and Brilliant Start</p>
        <p class="top-banner-price">$2.99</p>
      </div>

      <div class="popular-section">
        <p class="section-title-txt">Popular</p>
        <p class="section-see-all-txt">see all +</p>
      </div>
      <div class="horizontal-line"></div>
      <div class="collections-section">
        <p class="section-title-txt">Collections</p>
        <p class="section-see-all-txt">see all +</p>
        <b-container id="collections" class="bv-example-row">
          <b-row>
            <b-col
              ><b-card class="collections-women">
                <div>
                  <p class="collections-type-head">women</p>
                  <p class="collections-type-item-counts">247 ITEMS</p>
                </div>
              </b-card></b-col
            >
            <b-row>
              <b-col
                ><b-card class="collections-men">
                  <p class="collections-type-head">men</p>
                  <p class="collections-type-item-counts">112 ITEMS</p>
                </b-card>
                <b-card class="collections-kids">
                  <p class="collections-type-head">kids</p>
                  <p class="collections-type-item-counts">62 ITEMS</p>
                </b-card></b-col
              >
              <b-col>
                <b-card class="collections-new-ins">
                  <p class="collections-type-head">new-ins</p>
                  <p class="collections-type-item-counts">43 ITEMS</p>
                </b-card></b-col
              >
            </b-row>
          </b-row>
        </b-container>
      </div>
      <div class="newsletter-section">
        <p class="section-title-txt">Newsletter</p>
        <p class="section-title-desc">sigup with our newsletter..</p>
        <input type="text" class="text-line" placeholder="Enter your email" />
        <div class="send-btn-div">
          <img class="send-btn" src="../assets/send.png" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Sidebar from "./Sidebar.vue";
export default {
  name: "Collection",
  components: {
    Sidebar,
  },
};
</script>

<style scoped>
.main {
  background: #f7f3f3;
  display: flex;
  flex-direction: column;
  box-sizing: border-box;
}
.header {
  display: flex;
  flex-direction: row;
}

.collection-heading {
  text-align: center;
  font-size: 20px;
  font-weight: bold;
  position: absolute;
  left: 40%;
}

.cart-icon {
  position: absolute;
  right: 50px;
  margin-top: 5px;
}

.search-icon {
  position: absolute;
  right: 10px;
  margin-top: 5px;
}

.home-text {
  text-align: center;
  font-size: 20px;
  margin-top: 20px;
  font-weight: bold;
}

.popular-section {
  position: relative;
  height: 300px;
}

.section-title-txt {
  position: absolute;
  margin-top: 30px;
  margin-left: 20px;
  font-size: 32px;
}

.section-see-all-txt {
  margin-top: 30px;
  position: absolute;
  right: 0;
  font-size: 20px;
  font-weight: bold;
  margin-top: 45px;
  margin-right: 20px;
}

.horizontal-line {
  height: 2px;
  background: #c9c5c5;
  margin-left: 20px;
  margin-right: 20px;
}
</style>

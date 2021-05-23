<template>
  <div class="main">
    <p class="home-text">Home</p>
    <div class="header">
      <Sidebar />
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
  name: "Home",
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

.top-banner {
  background: #c9c5c5;
  height: 300px;
  position: relative;
  margin-top: 25px;
}

.add-icon-banner {
  position: absolute;
  width: 40px;
  height: 40px;
  right: 0;
  margin: 20px;
  bottom: 0;
  border-radius: 50%;
  background: #fff;
}

.top-banner-title {
  position: absolute;
  left: 0;
  bottom: 100px;
  margin-left: 20px;
  color: white;
  font-size: 30px;
}

.top-banner-desc {
  position: absolute;
  left: 0;
  bottom: 75px;
  margin-left: 20px;
  color: white;
  font-size: 18px;
}

.top-banner-price {
  position: absolute;
  left: 0;
  bottom: 50px;
  margin-left: 20px;
  color: white;
  font-size: 18px;
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

.collections-section {
  position: relative;
  height: 650px;
}

#collections {
  position: absolute;
  top: 100px;
}

.collections-women {
  position: relative;
  height: 160px;
  margin: 10px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  background: rgb(245, 245, 245);
}
.collections-men {
  position: relative;
  margin-bottom: 10px;
  height: 160px;
  margin-left: 10px;
  margin-right: -13px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  background: rgb(245, 245, 245);
}
.collections-kids {
  position: relative;
  height: 160px;
  margin-left: 10px;
  margin-right: -13px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  background: rgb(245, 245, 245);
}
.collections-new-ins {
  position: relative;
  height: 330px;
  margin-right: -13px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  background: rgb(245, 245, 245);
}

.collections-type-head {
  font-weight: bold;
  position: absolute;
  bottom: 0;
  margin-bottom: 50px;
  font-size: 18px;
}

.collections-type-item-counts {
  position: absolute;
  bottom: 17px;
  font-size: 12px;
  color: darkgrey;
  font-weight: BOLD;
}

.newsletter-section {
  position: relative;
  height: 200px;
}

.section-title-txt {
  position: absolute;
  margin-top: 30px;
  margin-left: 20px;
  font-size: 32px;
}

.section-title-desc {
  position: absolute;
  margin-top: 75px;
  margin-left: 20px;
  font-size: 12px;
  color: darkgrey;
  font-weight: BOLD;
}

.text-line {
  background-color: transparent;
  color: #161616;
  right: 0;
  width: 19em;
  margin-left: 20px;
  margin-top: 130px;
  outline: none;
  outline-style: none;
  outline-offset: 0;
  border-top: none;
  border-left: none;
  border-right: none;
  border-bottom: solid #868585 1px;
  opacity: 10;
  padding: 3px 10px;
}

.send-btn-div {
  position: absolute;
  border-radius: 50%;
  background: #fff;
  width: 35px;
  bottom: 10px;
  right: 50px;
  bottom: 50px;
}

.send-btn {
  width: 100%;
  padding: 10px;
}
</style>

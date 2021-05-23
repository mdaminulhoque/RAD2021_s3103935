<template>
  <div class="container">
    <img
      class="sidebar-btn"
      v-b-toggle.sidebar-no-header
      width="30"
      alt="placeholder"
      src="../assets/menu.png"
    />

    <b-sidebar
      id="sidebar-no-header"
      aria-labelledby="sidebar-no-header-title"
      no-header
      shadow
    >
      <template #default="{ hide }">
        <div class="sidebar-body">
          <div class="close-btn">
            <img block width="15" @click="hide" src="../assets/canel.png" />
          </div>
          <div class="shop-icon-txt">
            <img block class="some-icon" width="20" src="../assets/saved.png" />
            <div class="some-text">shop</div>
          </div>
          <div class="shop-list-titles">
            <div class="">Men</div>
            <div class="">Women</div>
            <div class="">Kids</div>
            <div class="">New-ins</div>
          </div>
          <div class="horizontal-line"></div>

          <div class="saved-icon-txt">
            <img block class="some-icon" width="20" src="../assets/saved.png" />
            <div class="some-text">shop</div>
          </div>
          <div class="help-icon-txt">
            <img block class="some-icon" width="20" src="../assets/help.png" />
            <div class="some-text">help & support</div>
          </div>
        </div>
      </template>
    </b-sidebar>
  </div>
</template>

<script>
export default {
  name: "Sidebar",
};
</script>

<style scoped>
html,
body {
  height: 100%;
}
.sidebar-btn {
  margin-left: 15px;
}

.main {
  background-color: #f7f3f3;
}

.close-btn {
  position: absolute;
  top: 40px;
  left: 20px;
}

.shop-icon-txt {
  display: flex;
  flex-direction: row;
  position: absolute;
  top: 150px;
  left: 20px;
}

.some-icon {
  order: 1;
}
.some-text {
  order: 2;
  font-size: 15px;
  font-weight: BOLD;
  margin-left: 20px;
}

.shop-list-titles {
  display: flex;
  flex-direction: column;
  margin-top: 30px;
  margin-left: 20px;
  color: #aaa6a6;
  font-size: 25px;
  position: absolute;
  top: 180px;
  margin-left: 60px;
}

.horizontal-line {
  height: 1px;
  background: #aaa6a6;
  margin-left: 50px;
  margin-right: 20px;
  margin-top: 400px;
  opacity: 20;
}

.saved-icon-txt {
  display: flex;
  flex-direction: row;
  margin-left: 20px;
  margin-top: 50px;
}

.help-icon-txt {
  display: flex;
  flex-direction: row;
  margin-left: 20px;
  margin-top: 50px;
}
</style>

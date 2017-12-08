<template>
  <section class="container is-widescreen">
    <div>
      <logo/>
      <h1 class="title">
        eth-p2p-lending
      </h1>
      <h2 class="subtitle">
        Peer 2 peer lending in ethereum
      </h2>
      <listing-table />
    </div>
  </section>
</template>

<script>
import Logo from '~/components/atoms/Logo.vue'
import ListingTable from '~/components/organisms/ListingTable.vue'

export default {
  components: {
    Logo,
    ListingTable
  }
}
</script>

<style lang="scss" scoped>
  .container {
    align-content: center;
  }  
</style>

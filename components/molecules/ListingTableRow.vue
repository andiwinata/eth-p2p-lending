<template>
  <tr>
    <td v-for="column in columnOrder" :key="column.name">
      {{ rowData[column.key] }}
    </td>
  </tr>
</template>

<script>
export default {
  props: {
    rowData: {
      type: Object,
      required: true
    },
    columnOrder: {
      type: Array,
      required: true
    }
  }
}
</script>


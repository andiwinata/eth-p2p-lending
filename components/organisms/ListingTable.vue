<template>
  <table class="table is-fullwidth is-hoverable">
    <thead>
      <tr>
        <th v-for="column in columnOrder" :key="column.name">
          {{ column.name }}
        </th>
      </tr>
    </thead>
    <tbody>
      <ListingTableRow 
        v-for="rowData in tableData"
        :key="rowData.contractAddress"
        :rowData="rowData" 
        :columnOrder="columnOrder"  
      />
    </tbody>
  </table>  
</template>

<script>
import ListingTableRow from '~/components/molecules/ListingTableRow.vue'
import tableDataMock from './tableDataMock'

export default {
  components: {
    ListingTableRow
  },
  data: function() {
    return {
      tableData: tableDataMock,
      columnOrder: [
        { key: 'contractAddress', name: 'Contract Address' },
        { key: 'amount', name: 'Amount' },
        { key: 'interest', name: 'Interest' },
        { key: undefined, name: 'Actions' }
      ]
    }
  }
}
</script>

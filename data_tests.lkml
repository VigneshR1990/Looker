test: quantity_is_accurate {
  explore_source: orders {
    column: unique_items_quantity {
      field: orders.unique_items_quantity
    }
    filters: [orders.order_date: "2017"]
  }
  assert: revenue_is_expected_value {
    expression: NOT ${orders.unique_items_quantity} < 1 ;;
  }
}

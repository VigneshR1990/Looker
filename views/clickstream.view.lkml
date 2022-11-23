view: clickstream {
  sql_table_name: ecommerce.clickstream ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: app_info {
    type: string
    sql: ${TABLE}.app_info ;;
  }

  dimension: device_advertising_id {
    type: string
    sql: ${TABLE}.`device.advertising_id` ;;
  }

  dimension: device_category {
    type: string
    sql: ${TABLE}.`device.category` ;;
  }

  dimension: device_category1 {
    type: string
    sql: ${TABLE}.`device.category` ;;
  }

  dimension: device_is_limited_ad_tracking {
    type: string
    sql: ${TABLE}.`device.is_limited_ad_tracking` ;;
  }

  dimension: device_language {
    type: string
    sql: ${TABLE}.`device.language` ;;
  }

  dimension: device_mobile_brand_name {
    type: string
    sql: ${TABLE}.`device.mobile_brand_name` ;;
  }

  dimension: device_mobile_marketing_name {
    type: string
    sql: ${TABLE}.`device.mobile_marketing_name` ;;
  }

  dimension: device_mobile_model_name {
    type: string
    sql: ${TABLE}.`device.mobile_model_name` ;;
  }

  dimension: device_mobile_os_hardware_model {
    type: string
    sql: ${TABLE}.`device.mobile_os_hardware_model` ;;
  }

  dimension: device_operating_system {
    type: string
    sql: ${TABLE}.`device.operating_system` ;;
  }

  dimension: device_operating_system_version {
    type: string
    sql: ${TABLE}.`device.operating_system_version` ;;
  }

  dimension: device_time_zone_offset_seconds {
    type: string
    sql: ${TABLE}.`device.time_zone_offset_seconds` ;;
  }

  dimension: device_vendor_id {
    type: string
    sql: ${TABLE}.`device.vendor_id` ;;
  }

  dimension: device_web_info_browser {
    type: string
    sql: ${TABLE}.`device.web_info.browser` ;;
  }

  dimension: device_web_info_browser_version {
    type: string
    sql: ${TABLE}.`device.web_info.browser_version` ;;
  }

  dimension: ecommerce_purchase_revenue {
    type: string
    sql: ${TABLE}.`ecommerce.purchase_revenue` ;;
  }

  dimension: ecommerce_purchase_revenue_in_usd {
    type: string
    sql: ${TABLE}.`ecommerce.purchase_revenue_in_usd` ;;
  }

  dimension: ecommerce_refund_value {
    type: string
    sql: ${TABLE}.`ecommerce.refund_value` ;;
  }

  dimension: ecommerce_refund_value_in_usd {
    type: string
    sql: ${TABLE}.`ecommerce.refund_value_in_usd` ;;
  }

  dimension: ecommerce_shipping_value {
    type: string
    sql: ${TABLE}.`ecommerce.shipping_value` ;;
  }

  dimension: ecommerce_shipping_value_in_usd {
    type: string
    sql: ${TABLE}.`ecommerce.shipping_value_in_usd` ;;
  }

  dimension: ecommerce_tax_value {
    type: string
    sql: ${TABLE}.`ecommerce.tax_value` ;;
  }

  dimension: ecommerce_tax_value_in_usd {
    type: string
    sql: ${TABLE}.`ecommerce.tax_value_in_usd` ;;
  }

  dimension: ecommerce_total_item_quantity {
    type: string
    sql: ${TABLE}.`ecommerce.total_item_quantity` ;;
  }

  dimension: ecommerce_transaction_id {
    type: string
    sql: ${TABLE}.`ecommerce.transaction_id` ;;
  }

  dimension: ecommerce_unique_items {
    type: string
    sql: ${TABLE}.`ecommerce.unique_items` ;;
  }

  dimension: event_bundle_sequence_id {
    type: string
    sql: ${TABLE}.event_bundle_sequence_id ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_dimensions {
    type: string
    sql: ${TABLE}.event_dimensions ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_previous_timestamp {
    type: string
    sql: ${TABLE}.event_previous_timestamp ;;
  }

  dimension: event_server_timestamp_offset {
    type: string
    sql: ${TABLE}.event_server_timestamp_offset ;;
  }

  dimension: event_timestamp {
    type: string
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: event_value_in_usd {
    type: string
    sql: ${TABLE}.event_value_in_usd ;;
  }

  dimension: geo_city {
    type: string
    sql: ${TABLE}.`geo.city` ;;
  }

  dimension: geo_continent {
    type: string
    sql: ${TABLE}.`geo.continent` ;;
  }

  dimension: geo_country {
    type: string
    sql: ${TABLE}.`geo.country` ;;
  }

  dimension: geo_metro {
    type: string
    sql: ${TABLE}.`geo.metro` ;;
  }

  dimension: geo_region {
    type: string
    sql: ${TABLE}.`geo.region` ;;
  }

  dimension: geo_sub_continent {
    type: string
    sql: ${TABLE}.`geo.sub_continent` ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: privacy_info_ads_storage {
    type: string
    sql: ${TABLE}.`privacy_info.ads_storage` ;;
  }

  dimension: privacy_info_analytics_storage {
    type: string
    sql: ${TABLE}.`privacy_info.analytics_storage` ;;
  }

  dimension: privacy_info_uses_transient_token {
    type: string
    sql: ${TABLE}.`privacy_info.uses_transient_token` ;;
  }

  dimension: stream_id {
    type: string
    sql: ${TABLE}.stream_id ;;
  }

  dimension: traffic_source_medium {
    type: string
    sql: ${TABLE}.`traffic_source.medium` ;;
  }

  dimension: traffic_source_name {
    type: string
    sql: ${TABLE}.`traffic_source.name` ;;
  }

  dimension: traffic_source_source {
    type: string
    sql: ${TABLE}.`traffic_source.source` ;;
  }

  dimension: user_first_touch_timestamp {
    type: string
    sql: ${TABLE}.user_first_touch_timestamp ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_ltv_currency {
    type: string
    sql: ${TABLE}.`user_ltv.currency` ;;
  }

  dimension: user_ltv_revenue {
    type: string
    sql: ${TABLE}.`user_ltv.revenue` ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      device_mobile_brand_name,
      device_mobile_marketing_name,
      device_mobile_model_name,
      event_name,
      traffic_source_name,
      users.device_mobile_brand_name,
      users.device_mobile_marketing_name,
      users.device_mobile_model_name,
      users.user_id
    ]
  }
}

view: users {
  sql_table_name: ecommerce.users ;;
  drill_fields: [user_id]

  dimension: user_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: device_advertising_id {
    type: string
    sql: ${TABLE}.`device.advertisingId` ;;
  }

  dimension: device_browser {
    type: string
    sql: ${TABLE}.`device.browser` ;;
  }

  dimension: device_browser_version {
    type: string
    sql: ${TABLE}.`device.browserVersion` ;;
  }

  dimension: device_category {
    type: string
    sql: ${TABLE}.`device.category` ;;
  }

  dimension: device_is_limited_ad_tracking {
    type: string
    sql: ${TABLE}.`device.isLimitedAdTracking` ;;
  }

  dimension: device_language {
    type: string
    sql: ${TABLE}.`device.language` ;;
  }

  dimension: device_mobile_brand_name {
    type: string
    sql: ${TABLE}.`device.mobileBrandName` ;;
  }

  dimension: device_mobile_marketing_name {
    type: string
    sql: ${TABLE}.`device.mobileMarketingName` ;;
  }

  dimension: device_mobile_model_name {
    type: string
    sql: ${TABLE}.`device.mobileModelName` ;;
  }

  dimension: device_mobile_os_hardware_model {
    type: string
    sql: ${TABLE}.`device.mobileOsHardwareModel` ;;
  }

  dimension: device_operating_system {
    type: string
    sql: ${TABLE}.`device.operatingSystem` ;;
  }

  dimension: device_operating_system_version {
    type: string
    sql: ${TABLE}.`device.operatingSystemVersion` ;;
  }

  dimension: device_time_zone_offset_seconds {
    type: string
    sql: ${TABLE}.`device.timeZoneOffsetSeconds` ;;
  }

  dimension: device_vendor_id {
    type: string
    sql: ${TABLE}.`device.vendorId` ;;
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

  dimension: lifetime_value {
    type: number
    sql: ${TABLE}.lifetimeValue ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_id,
      device_mobile_brand_name,
      device_mobile_marketing_name,
      device_mobile_model_name,
      clickstream.count,
      events.count,
      orders.count
    ]
  }
}

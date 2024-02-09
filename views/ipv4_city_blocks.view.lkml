view: ipv4_city_blocks {
  sql_table_name: `pso-gdc-japac-wedevelop-df.security_logs.ipv4_city_blocks` ;;

  dimension: accuracy_radius {
    type: number
    sql: ${TABLE}.accuracy_radius ;;
  }
  dimension: geoname_id {
    type: number
    sql: ${TABLE}.geoname_id ;;
  }
  dimension: is_anonymous_proxy {
    type: number
    sql: ${TABLE}.is_anonymous_proxy ;;
  }
  dimension: is_anycast {
    type: string
    sql: ${TABLE}.is_anycast ;;
  }
  dimension: is_satellite_provider {
    type: number
    sql: ${TABLE}.is_satellite_provider ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }
  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }
  dimension: registered_country_geoname_id {
    type: number
    sql: ${TABLE}.registered_country_geoname_id ;;
  }
  dimension: represented_country_geoname_id {
    type: string
    sql: ${TABLE}.represented_country_geoname_id ;;
  }
  measure: count {
    type: count
  }
}

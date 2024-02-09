view: ipv4_city_locations {
  sql_table_name: `pso-gdc-japac-wedevelop-df.security_logs.ipv4_city_locations` ;;

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }
  dimension: continent_code {
    type: string
    sql: ${TABLE}.continent_code ;;
  }
  dimension: continent_name {
    type: string
    sql: ${TABLE}.continent_name ;;
  }
  dimension: country_iso_code {
    type: string
    sql: ${TABLE}.country_iso_code ;;
  }
  dimension: country_name {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country_name ;;
  }
  dimension: geoname_id {
    type: number
    sql: ${TABLE}.geoname_id ;;
  }
  dimension: is_in_european_union {
    type: number
    sql: ${TABLE}.is_in_european_union ;;
  }
  dimension: locale_code {
    type: string
    sql: ${TABLE}.locale_code ;;
  }
  dimension: metro_code {
    type: string
    sql: ${TABLE}.metro_code ;;
  }
  dimension: subdivision_1_iso_code {
    type: string
    sql: ${TABLE}.subdivision_1_iso_code ;;
  }
  dimension: subdivision_1_name {
    type: string
    sql: ${TABLE}.subdivision_1_name ;;
  }
  dimension: subdivision_2_iso_code {
    type: string
    sql: ${TABLE}.subdivision_2_iso_code ;;
  }
  dimension: subdivision_2_name {
    type: string
    sql: ${TABLE}.subdivision_2_name ;;
  }
  dimension: time_zone {
    type: string
    sql: ${TABLE}.time_zone ;;
  }
  measure: count {
    type: count
    drill_fields: [continent_name, subdivision_2_name, city_name, country_name, subdivision_1_name]
  }
}

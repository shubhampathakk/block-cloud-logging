explore: vpn_mexico {
  from: vpn_mexico_poc
}

view: vpn_mexico_poc {
  sql_table_name: `pso-gdc-japac-wedevelop-df.dataflow_demo.vpn_mexico_poc` ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }
  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }
  dimension: dap_addr {
    type: string
    sql: ${TABLE}.dap_addr ;;
  }
  dimension: dap_session_attribute_endpoint_or_aaa {
    type: string
    sql: ${TABLE}.dap_session_attribute_endpoint_or_aaa ;;
  }
  dimension: dap_user {
    type: string
    sql: ${TABLE}.dap_user ;;
  }
  dimension: epm {
    type: string
    sql: ${TABLE}.epm ;;
  }
  dimension: event_source {
    type: string
    sql: ${TABLE}.event_source ;;
  }
  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }
  dimension: ident {
    type: string
    sql: ${TABLE}.ident ;;
  }
  dimension: msgid {
    type: string
    sql: ${TABLE}.msgid ;;
  }
  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }
  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }
  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }
  measure: count {
    type: count
  }
  measure: distinct_apps {
    type: count_distinct
    sql: ${app} ;;
    drill_fields: [app]
  }
}

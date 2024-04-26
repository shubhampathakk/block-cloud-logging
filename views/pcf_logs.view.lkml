view: pcf_logs {
  sql_table_name: `pso-gdc-japac-wedevelop-df.dataflow_demo.pcf_logs` ;;

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
  dimension: event_source {
    type: string
    sql: ${TABLE}.event_source ;;
  }
  dimension: extradata {
    type: string
    sql: ${TABLE}.extradata ;;
  }
  dimension: epm {
    type: string
    sql: regexp_substr(${extradata}, 'EPM=([^,]+)') ;;
  }
  dimension: app {
    type: string
    sql: regexp_substr(${extradata}, 'APP=([^,]+)') ;;
  }
  dimension: port {
    type: string
    sql: regexp_substr(${extradata}, 'PORT=([^,]+)') ;;
  }
  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }
  dimension: ident {
    type: string
    sql: ${TABLE}.ident ;;
  }
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  dimension: msgid {
    type: string
    sql: ${TABLE}.msgid ;;
  }
  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }
  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }
  measure: total_app {
    type: count_distinct
    sql: ${app} ;;
    drill_fields: [app,host, count]
  }

  measure: total_epms {
    type: count_distinct
    sql: ${epm} ;;
    drill_fields: [epm,host, count]
  }
  measure: total_ports {
    type: count_distinct
    sql: ${port} ;;
    drill_fields: [port,host, count]
  }


  measure: count {
    type: count
  }
  measure: volume_host {
    type: count_distinct
    sql: ${host} ;;
  }
}

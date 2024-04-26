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
  measure: count {
    type: count
  }
}

explore: sample {
  from: sample_logs
}

view: sample_logs {
  sql_table_name: `pso-gdc-japac-wedevelop-df.security_logs.sample_log2` ;;

  dimension: error {
    type: string
    sql: REGEXP_EXTRACT(${logs}, '"^\"error\":\"(.*?)\""') ;;
  }
  dimension: logs {
    type: string
    sql: ${TABLE}.logs ;;
  }
  measure: count {
    type: count
  }
}

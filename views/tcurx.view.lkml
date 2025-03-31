view: tcurx {
  sql_table_name: `pso-gdc-japac-wedevelop-df.sappi_bq..tcurx` ;;
  dimension: currkey {
    type: string
    sql: ${TABLE}.currkey ;;
  }
  dimension: currdec {
    type: number
    sql: ${TABLE}.currdec ;;
  }
}

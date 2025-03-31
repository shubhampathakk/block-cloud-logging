view: control {
  sql_table_name: `pso-gdc-japac-wedevelop-df.sappi_bq.control` ;;

  dimension: output_field {
    type: string
    sql: ${TABLE}.output_field ;;
  }
  dimension: pricing_condition {
    type: string
    sql: ${TABLE}.pricing_condition ;;
  }
  dimension: pricing_procedure {
    type: string
    sql: ${TABLE}.pricing_procedure ;;
  }
  dimension: subtotal_field_1 {
    type: string
    sql: ${TABLE}.subtotal_field_1 ;;
  }
  dimension: subtotal_field_2 {
    type: string
    sql: ${TABLE}.subtotal_field_2 ;;
  }
  dimension: subtotal_field_3 {
    type: string
    sql: ${TABLE}.subtotal_field_3 ;;
  }
  dimension: subtotal_field_4 {
    type: string
    sql: ${TABLE}.subtotal_field_4 ;;
  }
  measure: count {
    type: count
  }
}

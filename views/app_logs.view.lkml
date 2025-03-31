view: app_logs {
  #sql_table_name: `pso-gdc-japac-wedevelop-df.testing_time.log_workspace` ;;
  #required_access_grants: [is_employee]
  derived_table: {
    sql:
        SELECT DATE(_PARTITIONTIME) as day, host, ident, COUNT(host) as Volume, extradata
        FROM  @{PROJECT_ID}.@{DATASET_ID}.@{table_app_log}
        WHERE DATE(_PARTITIONTIME) >= CURRENT_DATE()-120
        group by host,Extradata, ident, day
        order by host;;
  }

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

  dimension: date {
    type: date
    sql: ${TABLE}.day ;;
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

  dimension: Volume {
    type: number
    sql: ${TABLE}.Volume ;;
    drill_fields: [host, count]
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
  measure: count {
    type: count
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
}

view: app_monthly_logs {
  #required_access_grants: [is_employee]
  derived_table: {
    sql:
        SELECT DISTINCT host, extradata, TIMESTAMP(_PARTITIONTIME) as day
        FROM  @{PROJECT_ID}.@{DATASET_ID}.@{table_app_log}
        WHERE DATE(_PARTITIONTIME) >= CURRENT_DATE()-30;;
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
    type: date_time
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

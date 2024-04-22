view: app_logs {
  #sql_table_name: `pso-gdc-japac-wedevelop-df.testing_time.log_workspace` ;;
  #required_access_grants: [is_employee]
  derived_table: {
    sql:
        SELECT DATE(_PARTITIONTIME) as day, host, ident, COUNT(host) as Volume, extradata
        FROM  @{PROJECT_ID}.@{DATASET_ID}.@{table_app_log}
        WHERE DATE(_PARTITIONTIME) >= CURRENT_DATE()-3
        group by host,Extradata, ident, day
        order by host
        limit 1000;;
  }

  # dimension_group: _partitiondate {
  #   type: time
  #   timeframes: [raw, date, week, month, quarter, year]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}._PARTITIONDATE ;;
  # }
  # dimension_group: _partitiontime {
  #   type: time
  #   timeframes: [raw, date, week, month, quarter, year]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}._PARTITIONTIME ;;
  # }

  dimension: date {
    type: date
    sql: ${TABLE}.day ;;
  }
  # dimension: event_source {
  #   type: string
  #   sql: ${TABLE}.event_source ;;
  # }
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
  dimension: Volume {
    type: number
    sql: ${TABLE}.Volume ;;
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
}

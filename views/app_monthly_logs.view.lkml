view: app_monthly_logs {
  #required_access_grants: [is_employee]
  derived_table: {
    sql:
        SELECT _PARTITIONTIME as day, host, ident, COUNT(host) as Volume, extradata
        FROM  @{PROJECT_ID}.@{DATASET_ID}.@{table_app_log}
        WHERE DATE(_PARTITIONTIME) >= CURRENT_DATE()-30
        group by host,Extradata, ident, day
        order by host;;
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
  # dimension: message {
  #   type: string
  #   sql: ${TABLE}.message ;;
  # }
  # dimension: msgid {
  #   type: string
  #   sql: ${TABLE}.msgid ;;
  # }
  # dimension: pid {
  #   type: string
  #   sql: ${TABLE}.pid ;;
  # }
  # dimension: time {
  #   type: string
  #   sql: ${TABLE}.time ;;
  # }
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
    drill_fields: [app,port, count]
  }

  measure: total_epms {
    type: count_distinct
    sql: ${epm} ;;
    drill_fields: [epm,ident, count]
  }
  measure: total_ports {
    type: count_distinct
    sql: ${port} ;;
    drill_fields: [port, count]
  }
}
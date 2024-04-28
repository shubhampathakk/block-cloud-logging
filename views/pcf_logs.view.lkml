view: pcf_logs {
  sql_table_name: @{PROJECT_ID}.@{DATASET_ID}.@{table_pcf} ;;

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
  #customer dimesions
  dimension:  UID{
    type: string
    sql: CASE
          WHEN CONTAINS_SUBSTR(${message}, "UID") THEN REGEXP_EXTRACT(${message}, r'"UID:([^"]+)"')
          ELSE "Doesn't contain UID"
          END;;
    html:
        {% if value == "Doesn't contain UID" %}
          <span style = "color: red;"> {{rendered_value}} </span>
        {% endif %};;
  }
  dimension:  log_type{
    type: string
    sql: CASE
          WHEN CONTAINS_SUBSTR(${message}, "INFO") THEN "INFO"
          WHEN CONTAINS_SUBSTR(${message}, "ERROR") THEN "ERROR"
          ELSE "Doesn't contain type"
          END;;
    html:
        {% if value == "Doesn't contain type" %}
          <span style = "color: red;"> {{rendered_value}} </span>
        {% endif %};;
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

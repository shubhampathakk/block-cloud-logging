explore: vpn_uruguay {
  from: vpn_uruguay_poc
}

view: vpn_uruguay_poc {
  sql_table_name: @{PROJECT_ID}.@{DATASET_ID}.@{table_uruguay} ;;

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
  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }
  dimension: bytes_rcv {
    type: string
    sql: ${TABLE}.bytes_rcv ;;
  }
  dimension: bytes_xmt{
    type: string
    sql: ${TABLE}.bytes_xmt ;;
  }
  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }
  dimension: epm {
    type: string
    sql: ${TABLE}.epm ;;
  }
  dimension: event_source {
    type: string
    sql: ${TABLE}.event_source ;;
  }
  dimension: group {
    type: string
    sql: ${TABLE}.`group` ;;
  }
  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }
  dimension: ident {
    type: string
    sql: ${TABLE}.ident ;;
  }
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
    html:
    {% if ip._value == "99.246.96.175" %}
    <img src = "https://upload.wikimedia.org/wikipedia/commons/d/d9/Flag_of_Canada_%28Pantone%29.svg" height="10" width="16"> {{linked_value}}
    {% elsif ip._value == "99.234.37.166" %}
    <img src = "https://upload.wikimedia.org/wikipedia/en/a/a4/Flag_of_the_United_States.svg"  height="10" width="16"> {{linked_value}}
    {% else %}
    {{linked_value}}
    {% endif %} ;;
  }
  dimension: msgid {
    type: string
    sql: ${TABLE}.msgid ;;
  }
  dimension: pid {
    type: string
    sql: ${TABLE}.pid ;;
  }
  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }
  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }
  dimension: session {
    type: string
    sql: ${TABLE}.session ;;
  }
  dimension: session_type {
    type: string
    sql: ${TABLE}.session_type ;;
  }
  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }
  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }
  measure: count {
    label: "Total"
    type: count
    drill_fields: [username]
  }
  measure: distinct_apps {
    type: count_distinct
    sql: ${app} ;;
    drill_fields: [app]
  }
  measure: avg_data_rcv{
    type: average
    sql: ${bytes_rcv} ;;
  }
  measure: avg_duration{
    type: string
    sql: FORMAT_TIMESTAMP('%T', TIMESTAMP_SECONDS(cast(AVG(TIME_DIFF(TIME(
    CAST(REGEXP_EXTRACT(${duration}, r"(\d+)h") AS INT64),
    CAST(REGEXP_EXTRACT(${duration}, r"(\d+)m") AS INT64),
    CAST(REGEXP_EXTRACT(${duration}, r"(\d+)s") AS INT64)
  ) , TIME '00:00:00', SECOND)) as INT64))) ;;
  }
  measure: grouped_bytes_xmt {
    type: sum
    sql: cast(${bytes_xmt} as INT64) ;;
  }
  measure: grouped_bytes_rcv {
    type: sum
    sql: cast(${bytes_rcv} as INT64) ;;
  }
}

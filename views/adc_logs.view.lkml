view: adc_logs {
  derived_table:{
    sql: select TIMESTAMP(_PARTITIONTIME) as day,_PARTITIONTIME,_PARTITIONDATE, * from @{PROJECT_ID}.@{DATASET_ID}.@{table_adc_log}
    WHERE DATE(_PARTITIONTIME) >= CURRENT_DATE()-30;;
  }

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }
  dimension: partitiondate_one_week_less{
    type: date
    sql: DATE_SUB(${_partitiondate_date}, INTERVAL 7 DAY)  ;;
  }
  dimension: partitiondate_minus_3_days{
    type: date
    sql: DATE_SUB(${_partitiondate_date}, INTERVAL 3 DAY)  ;;
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
    sql:  ${TABLE}.day;;
  }
  dimension: additional_information {
    type: string
    sql: ${TABLE}.additional_information ;;
  }
  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }
  dimension: dc_server {
    type: string
    sql: ${TABLE}.dc_server ;;
  }
  dimension: dc_system_domain {
    type: string
    sql: ${TABLE}.dc_system_domain ;;
  }
  dimension: destination_ip {
    type: string
    sql: ${TABLE}.destination_ip ;;
  }
  dimension: epm {
    type: string
    sql: ${TABLE}.epm ;;
  }
  dimension: event_category {
    type: string
    sql: ${TABLE}.event_category ;;
  }
  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension: event_source {
    type: string
    sql: ${TABLE}.event_source ;;
  }
  dimension: event_username {
    type: string
    sql: ${TABLE}.event_username ;;
  }
  dimension: group_account_name {
    type: string
    sql: ${TABLE}.group_account_name ;;
  }
  dimension: group_domain_name {
    type: string
    sql: ${TABLE}.group_domain_name ;;
  }
  dimension: group_security_id {
    type: string
    sql: ${TABLE}.group_security_id ;;
  }
  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }
  dimension: ident {
    type: string
    sql: ${TABLE}.ident ;;
  }
  dimension: member_account_name {
    type: string
    sql: ${TABLE}.member_account_name ;;
  }
  dimension: member_security_id {
    type: string
    sql: ${TABLE}.member_security_id ;;
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
  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }
  dimension: source_ip {
    type: string
    sql: ${TABLE}.source_ip ;;
  }
  dimension: subject_account_domain {
    type: string
    sql: ${TABLE}.subject_account_domain ;;
  }
  dimension: subject_account_name {
    type: string
    sql: ${TABLE}.subject_account_name ;;
  }
  dimension: subject_logon_id {
    type: string
    sql: ${TABLE}.subject_logon_id ;;
  }
  dimension: subject_security_id {
    type: string
    sql: ${TABLE}.subject_security_id ;;
  }
  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: account_server{
    type: string
    sql: CONCAT(${subject_account_name}, ' - ' ,${dc_server}) ;;
  }

  dimension: scotia_image_url {
    type: string
    sql: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Scotiabank_logo.svg/2880px-Scotiabank_logo.svg.png' ;;
    html: <img src="{{ value }}" width="300" height="200"> ;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: total_host {
    type: count_distinct
    sql: ${host} ;;
    drill_fields: [host, count]
  }
  measure: total_group_account_name {
    type: count_distinct
    sql: ${group_account_name} ;;
    drill_fields: [group_account_name, count]
  }
  measure: total_app {
    type: count_distinct
    sql: ${app} ;;
    drill_fields: [app, event_source,port, count]
  }
  measure: total_servers {
    type: count_distinct
    sql: ${dc_server} ;;
    drill_fields: [dc_server,subject_account_name, count]
  }
  measure: total_epms {
    type: count_distinct
    sql: ${epm} ;;
    drill_fields: [epm,ident, count]
  }
  measure: total_pids {
    type: count_distinct
    sql: ${pid} ;;
    drill_fields: [pid,ident, count]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  subject_account_name,
  event_username,
  group_account_name,
  member_account_name,
  group_domain_name,
  event_name
  ]
  }

}

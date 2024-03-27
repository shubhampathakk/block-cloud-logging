explore: scotia {
  from: scotia_logs
}

view: scotia_logs {
  sql_table_name: `pso-gdc-japac-wedevelop-df.security_logs.scotia_logs` ;;

  dimension: app {
    type: string
    sql: ${TABLE}.APP ;;
  }
  dimension: device_friendly_name {
    type: string
    sql: ${TABLE}.DeviceFriendlyName ;;
  }
  dimension: enrollment_user {
    type: string
    sql: ${TABLE}.EnrollmentUser ;;
  }
  dimension: epm {
    type: string
    sql: ${TABLE}.EPM ;;
  }
  dimension: event {
    type: string
    sql: ${TABLE}.Event ;;
  }
  dimension: event_category {
    type: string
    sql: ${TABLE}.Event_Category ;;
    drill_fields: [enrollment_user]
    link: {
      label: "Adding details fields for this category"
      url: "https://9b5682f8-94ce-49e3-9836-fb0635a6e8a9.looker.app/dashboards/10"
    }
  }
  dimension: event_data {
    type: string
    sql: ${TABLE}.Event_Data ;;
  }
  dimension: event_module {
    type: string
    sql: ${TABLE}.Event_Module ;;
  }
  dimension: event_source {
    type: string
    sql: ${TABLE}.event_source ;;
  }
  dimension: event_type {
    type: string
    sql: ${TABLE}.Event_Type ;;
  }
  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }
  dimension: ident {
    type: string
    sql: ${TABLE}.ident ;;
  }
  dimension: port {
    type: number
    sql: ${TABLE}.PORT ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }
  dimension_group: time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.time ;;
  }
  dimension: user {
    type: string
    sql: ${TABLE}.User ;;
  }
  measure: count {
    type: count
    drill_fields: [device_friendly_name]
  }
  measure: distinct_users {
    type: count_distinct
    sql: ${enrollment_user} ;;
    drill_fields: [enrollment_user]
  }
  measure: total_app {
    type: count_distinct
    sql: ${app} ;;
    drill_fields: [app]
  }
  measure: total_sources {
    type: count_distinct
    sql: ${event_source} ;;
    drill_fields: [event_source]
  }
}

view: conv {
  derived_table: {
    sql: WITH
              conv AS (
              SELECT
                fcurr,
                kurst,
                tcurr,
                gdatu,
                DATE(
                    CAST(SUBSTR(CAST((99999999 - CAST(gdatu AS NUMERIC)) AS STRING), 1, 4) AS INT64),
                    CAST(SUBSTR(CAST((99999999 - CAST(gdatu AS NUMERIC)) AS STRING), 5, 2) AS INT64),
                    CAST(SUBSTR(CAST((99999999 - CAST(gdatu AS NUMERIC)) AS STRING), 7, 2) AS INT64)
                  ) AS conversion_date,
                if(ukurs  >= 0, ukurs, -1 * 1 / ukurs) as ukurs --conversion rate
              FROM
                `pso-gdc-japac-wedevelop-df.sappi_bq.tcurr`
               )
              SELECT * from conv ;;
  }

  dimension: fcurr {
    type: string
    sql: ${TABLE}.fcurr ;;
  }

  # parameter: kurst {
  #   type: string
  #   allowed_value: {value: "M"}
  #   allowed_value: {value: "B"}
  #   allowed_value: {value: "00"}
  # }

  # parameter: tcurr {
  #   type: string
  #   allowed_value: {value: "USD"}
  #   allowed_value: {value: "EUR"}
  #   allowed_value: {value: "INR"}
  # }

  # parameter: gdatu {
  #   type: string
  #   allowed_value: {value: "99999999"}
  #   allowed_value: {value: "99990101"}
  #   allowed_value: {value: "99981231"}
  # }

  dimension: kurst {
    type: string
    sql: ${TABLE}.kurst ;;
  }

  dimension: tcurr {
    type: string
    sql: ${TABLE}.tcurr ;;
  }

  dimension: gdatu {
    type: string
    sql: ${TABLE}.gdatu ;;
  }

  dimension: conversion_date {
    type: date
    sql:  ${TABLE}.conversion_date;;
  }

  dimension_group: conversion_date_time {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql:  ${TABLE}.conversion_date;;
  }

  dimension: ukurs {
    type: number
    sql: ${TABLE}.ukurs ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: date {
    type: number
    sql: ${TABLE}.Date ;;
  }

  measure: average_ukurs {
    type: average
    sql: ${TABLE}.ukurs ;;
  }
}

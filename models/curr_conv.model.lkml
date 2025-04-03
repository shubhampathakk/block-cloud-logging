connection: "sample_bigquery_connection"

include: "/views/**/*.view"               # include all views in the views/ folder in this project

explore: amt {
  join: conv {
    relationship: many_to_one
    sql_on: ${amt.sd_document_currency_doc_currcy} = ${conv.fcurr}
    --AND ${amt.zcurrdate_date} = ${conv.conversion_date};;  # Changed this line
  }
  join: tcurx {
    relationship: many_to_one
    sql_on: ${amt.sd_document_currency_doc_currcy} = ${tcurx.currkey} ;;
  }
}

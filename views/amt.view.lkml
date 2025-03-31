view: amt {
  sql_table_name: `pso-gdc-japac-wedevelop-df.sappi_bq.sample` ;;

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: calendar_year_month_calmonth {
    type: string
    sql: ${TABLE}.CalendarYearMonth_CALMONTH ;;
  }

  dimension: sd_document_currency_doc_currcy {
    type: string
    sql: ${TABLE}.SdDocumentCurrency_DOC_CURRCY ;;
  }

  measure: subtotal_agg {
    type: sum
    sql: ${TABLE}.Subtotal1FromPricingProcedureForCondition_SUBTOTAL_1 ;;
  }

  measure: subtotal_agg_corrected_decimals {
    type: number
    sql: ${subtotal_agg} * POWER(10, 2 - ${tcurx.currdec}) ;;
  }

  measure: converted_subtotal {
    type: number
    sql: ${subtotal_agg_corrected_decimals} * ${conv.ukurs} ;;
    value_format_name: decimal_2
  }

  dimension: product_group {
    type: string
    description: "Product Group"
    sql: ${TABLE}.MATERIAL__ZPRICEGRP ;;
  }

  dimension: sales_document_doc_number {
    type: string
    description: "Sales document"
    sql: ${TABLE}.SalesDocument_DOC_NUMBER ;;
  }
  dimension: sales_document_item_s_ord_item {
    type: string
    description: "Sales document item"
    sql: ${TABLE}.SalesDocumentItem_S_ORD_ITEM ;;
  }
  dimension: billing_document_bill_num {
    type: string
    description: "Billing document"
    sql: ${TABLE}.BillingDocument_BILL_NUM ;;
  }
  dimension: billing_item_bill_item {
    type: string
    description: "Billing item"
    sql: ${TABLE}.BillingItem_BILL_ITEM ;;
  }
  dimension: invoiced_booked_indicator_inv_bkd {
    type: string
    description: "Invoiced-Booked Indicator"
    sql: ${TABLE}.InvoicedBookedIndicator_INV_BKD ;;
  }
  dimension: TypeBudgetForecastTarget_ZTYPE {
    type: string
    description: "Type: Actual/Budget/Forecast/Target"
    sql: ${TABLE}.TypeBudgetForecastTarget_ZTYPE ;;
  }
  dimension_group: zcurrdate {
    group_label: "00 Dates"
    label: "Curr Exch Rate date"
    description: "Curr Exch Rate date ZCURRDATE"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CurrExchRateDate_ZCURRDATE ;;
  }
  dimension: doc_currcy {
    label: "Document Currency"
    type: string
    sql: ${TABLE}.SdDocumentCurrency_DOC_CURRCY ;;
  }
  dimension: FiscalYearPeriod_FISCPER {
    label: "Fisca Year Period"
    type: string
    sql: ${TABLE}.FiscalYearPeriod_FISCPER ;;
  }

  measure: zbweight {
    label: "Invoiced-Booked Quantity KG"
    description: "Invoiced-Booked Quantity KG  ZBWEIGHT"
    type: sum
    sql: ${TABLE}.Inv_bookedWeight_ZBWEIGHT ;;
    value_format: "0.00"
  }
  measure: net_invoiced_sales_cash_discount_zs_nisdis {
    type: sum
    description: "Net Invoiced Sales + Cash discount"
    sql: round(${TABLE}.NetInvoicedSalesCashDiscount_ZS_NISDIS * POWER(10, 2 - if(${tcurx.currdec} is null, 2, ${tcurx.currdec})) * ${conv.ukurs}, 2);;
  }
  measure: net_sales_zs_netsal {
    type: sum
    description: "Net Sales"
    sql: round(${TABLE}.NetSales_ZS_NETSAL * POWER(10, 2 - if(${tcurx.currdec} is null, 2, ${tcurx.currdec})) * ${conv.ukurs}, 2) ;;
  }

  measure: net_sales_zs_netsal_actual {
    type: sum
    description: "Net Sales"
    sql: ${TABLE}.NetSales_ZS_NETSAL ;;
  }
  measure: delivery_customer_freight_zydcf {
    type: number
    description: "Delivery Customer freight"
    sql: ${TABLE}.DeliveryCustomerFreight_ZYDCF ;;
  }
  measure: net_revenue_zs_netrev {
    type: sum
    description: "Net Revenue"
    sql: ${TABLE}.NetRevenue_ZS_NETREV ;;
  }
}

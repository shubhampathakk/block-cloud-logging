view: amt {
  derived_table: {
    sql: SELECT
        MATERIAL__ZPRICEGRP as product_group,
        SalesDocument_DOC_NUMBER as sales_document_doc_number,
        SdDocumentCurrency_DOC_CURRCY as SdDocumentCurrency_DOC_CURRCY,
        SalesDocumentItem_S_ORD_ITEM as sales_document_item_s_ord_item,
        BillingDocument_BILL_NUM as billing_document_bill_num,
        BillingItem_BILL_ITEM as billing_item_bill_item,
        InvoicedBookedIndicator_INV_BKD as invoiced_booked_indicator_inv_bkd,
        TypeBudgetForecastTarget_ZTYPE,
        CurrExchRateDate_ZCURRDATE,
        FiscalYearPeriod_FISCPER,
        SUM(NetInvoicedSalesCashDiscount_ZS_NISDIS) as net_invoiced_sales_cash_discount_zs_nisdis_actual,
        SUM(NetSales_ZS_NETSAL) as net_sales_zs_netsal_actual,
        SUM(NetRevenue_ZS_NETREV) as net_revenue_zs_netrev_actual,
        SUM(Inv_bookedWeight_ZBWEIGHT) as zbweight,
        SUM(DeliveryCustomerFreight_ZYDCF) as delivery_customer_freight_zydcf

    FROM
        `pso-gdc-japac-wedevelop-df.sappi_bq.zinbobu_with_text`
    GROUP BY 1,2,3,4,5,6,7,8,9,10
       ;;
  }

  dimension: sd_document_currency_doc_currcy {
    type: string
    sql: ${TABLE}.SdDocumentCurrency_DOC_CURRCY ;;
  }

  dimension: product_group {
    type: string
    description: "Product Group"
    sql: ${TABLE}.product_group ;;
  }

  dimension: sales_document_doc_number {
    type: string
    description: "Sales document"
    sql: ${TABLE}.sales_document_doc_number ;;
    drill_fields: [
      net_invoiced_sales_cash_discount_zs_nisdis,
      net_sales_zs_netsal,
      delivery_customer_freight_zydcf,
      net_revenue_zs_netrev,
      conv.tcurr,
      TypeBudgetForecastTarget_ZTYPE,
      zcurrdate_date
    ]
  }
  dimension: sales_document_item_s_ord_item {
    type: string
    description: "Sales document item"
    sql: ${TABLE}.sales_document_item_s_ord_item ;;
  }
  dimension: billing_document_bill_num {
    type: string
    description: "Billing document"
    sql: ${TABLE}.billing_document_bill_num ;;
  }
  dimension: billing_item_bill_item {
    type: string
    description: "Billing item"
    sql: ${TABLE}.billing_item_bill_item ;;
  }
  dimension: invoiced_booked_indicator_inv_bkd {
    type: string
    description: "Invoiced-Booked Indicator"
    sql: ${TABLE}.invoiced_booked_indicator_inv_bkd ;;
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
    sql: ${TABLE}.zbweight ;;
    value_format: "0.00"
  }
  measure: net_invoiced_sales_cash_discount_zs_nisdis {
    type: sum
    description: "Net Invoiced Sales + Cash discount"
    sql: round(${TABLE}.net_invoiced_sales_cash_discount_zs_nisdis_actual * POWER(10, 2 - if(${tcurx.currdec} is null, 2, ${tcurx.currdec})) * ${conv.ukurs}, 2);;
  }
  measure: net_sales_zs_netsal {
    type: sum
    description: "Net Sales"
    sql: round(${TABLE}.net_sales_zs_netsal_actual * POWER(10, 2 - if(${tcurx.currdec} is null, 2, ${tcurx.currdec})) * ${conv.ukurs}, 2) ;;
  }

  measure: net_sales_zs_netsal_actual {
    type: sum
    description: "Net Sales Actual"
    sql: ${TABLE}.net_sales_zs_netsal_actual ;;
  }
  measure: net_revenue_zs_netrev_actual {
    type: sum
    description: "Net Revenue Actual"
    sql: ${TABLE}.net_revenue_zs_netrev_actual ;;
  }
  measure: delivery_customer_freight_zydcf {
    type: sum
    description: "Delivery Customer freight"
    sql: round(${TABLE}.delivery_customer_freight_zydcf * POWER(10, 2 - if(${tcurx.currdec} is null, 2, ${tcurx.currdec})) * ${conv.ukurs}, 2) ;;
  }
  measure: net_revenue_zs_netrev {
    type: sum
    description: "Net Revenue"
    sql: round(${TABLE}.net_revenue_zs_netrev_actual * POWER(10, 2 - if(${tcurx.currdec} is null, 2, ${tcurx.currdec})) * ${conv.ukurs}, 2) ;;
  }
}

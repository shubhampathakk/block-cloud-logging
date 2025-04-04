---
- dashboard: currency_translation
  title: Currency translation
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: kXYaTVabvQMk9TA1Ck09ah
  elements:
  - title: Currency translation
    name: Currency translation
    model: zinbobu
    explore: amt
    type: table
    fields: [amt.product_group, amt.sales_document_doc_number, amt.sd_document_currency_doc_currcy,
      amt.billing_document_bill_num, amt.billing_item_bill_item, amt.TypeBudgetForecastTarget_ZTYPE,
      amt.zcurrdate_date, amt.net_invoiced_sales_cash_discount_zs_nisdis, amt.net_sales_zs_netsal,
      amt.delivery_customer_freight_zydcf, amt.net_revenue_zs_netrev, conv.tcurr]
    filters:
      conv.tcurr: EUR
      conv.conversion_date_time_date: 2024/08/01 to 2025/04/02
    sorts: [amt.sales_document_doc_number desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      TypeBudgetForecastTarget ZTYPE: amt.TypeBudgetForecastTarget_ZTYPE
    row: 0
    col: 0
    width: 24
    height: 10
  filters:
  - name: Currency
    title: Currency
    type: field_filter
    default_value: EUR
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: zinbobu
    explore: amt
    listens_to_filters: []
    field: conv.tcurr
  - name: TypeBudgetForecastTarget ZTYPE
    title: TypeBudgetForecastTarget ZTYPE
    type: field_filter
    default_value: A
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
    model: zinbobu
    explore: amt
    listens_to_filters: []
    field: amt.TypeBudgetForecastTarget_ZTYPE
  - name: Conversion Date Time Date
    title: Conversion Date Time Date
    type: field_filter
    default_value: 2025/04/01 to 2025/04/02
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: zinbobu
    explore: amt
    listens_to_filters: []
    field: conv.conversion_date_time_date

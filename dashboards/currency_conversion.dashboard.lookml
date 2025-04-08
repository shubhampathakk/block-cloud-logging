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
    type: looker_grid
    fields: [amt.product_group, amt.sales_document_doc_number, amt.sd_document_currency_doc_currcy,
      amt.billing_document_bill_num, amt.billing_item_bill_item, amt.TypeBudgetForecastTarget_ZTYPE,
      amt.zcurrdate_date, amt.net_invoiced_sales_cash_discount_zs_nisdis, amt.net_sales_zs_netsal,
      amt.delivery_customer_freight_zydcf, amt.net_revenue_zs_netrev, conv.tcurr,
      amt.net_sales_zs_netsal_actual]
    sorts: [amt.zcurrdate_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_background_color: ''
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      TypeBudgetForecastTarget ZTYPE: amt.TypeBudgetForecastTarget_ZTYPE
      Curr Exch Rate date Date: amt.zcurrdate_date
      Billing Document Bill Num: amt.billing_document_bill_num
      Tcurr: conv.tcurr
    row: 0
    col: 0
    width: 24
    height: 11
  filters:
  - name: Tcurr
    title: Tcurr
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
  - name: Curr Exch Rate date Date
    title: Curr Exch Rate date Date
    type: field_filter
    default_value: 2025/04/08 to 2025/04/09
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: zinbobu
    explore: amt
    listens_to_filters: []
    field: amt.zcurrdate_date
  - name: Billing Document Bill Num
    title: Billing Document Bill Num
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: zinbobu
    explore: amt
    listens_to_filters: []
    field: amt.billing_document_bill_num

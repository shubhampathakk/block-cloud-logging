---
- dashboard: applications_monthly
  title: Applications_Monthly
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: mTIjJltkitQ9yy8D2u8GZT
  elements:
  - title: APPs
    name: APPs
    model: app_monthly_logging
    explore: app_monthly
    type: single_value
    fields: [app_monthly.total_app]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date: app_monthly.date
      App: app_monthly.app
      Epm: app_monthly.epm
      Host: app_monthly.host
      Port: app_monthly.port
    row: 0
    col: 0
    width: 8
    height: 2
  - title: EPMs
    name: EPMs
    model: app_monthly_logging
    explore: app_monthly
    type: single_value
    fields: [app_monthly.total_epms]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: app_monthly.date
      App: app_monthly.app
      Epm: app_monthly.epm
      Host: app_monthly.host
      Port: app_monthly.port
    row: 0
    col: 8
    width: 8
    height: 2
  - title: Ports
    name: Ports
    model: app_monthly_logging
    explore: app_monthly
    type: single_value
    fields: [app_monthly.total_ports]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: app_monthly.date
      App: app_monthly.app
      Epm: app_monthly.epm
      Host: app_monthly.host
      Port: app_monthly.port
    row: 0
    col: 16
    width: 8
    height: 2
  - title: New Tile
    name: New Tile
    model: app_monthly_logging
    explore: app_monthly
    type: looker_grid
    fields: [app_monthly.date, app_monthly.host, app_monthly.ident, app_monthly.app,
      app_monthly.epm, app_monthly.port, app_monthly.Volume]
    filters: {}
    sorts: [app_monthly.date desc]
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
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      app_monthly.Volume:
        is_active: true
        palette:
          palette_id: 8c0eb804-638e-86ca-485a-e14f2ca1160e
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
          custom_colors:
          - "#e048f5"
          - "#7CC8FA"
          - "#54AAE2"
          - "#9E7FD0"
        value_display: true
    series_text_format:
      app_monthly.Volume:
        bold: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#FCCF41",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e, options: {steps: 5, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: app_monthly.date
      App: app_monthly.app
      Epm: app_monthly.epm
      Host: app_monthly.host
      Port: app_monthly.port
    row: 2
    col: 0
    width: 24
    height: 13
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 2024/04/25 15:08 to 2024/04/25 15:08
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: app_monthly_logging
    explore: app_monthly
    listens_to_filters: []
    field: app_monthly.date
  - name: App
    title: App
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: app_monthly_logging
    explore: app_monthly
    listens_to_filters: []
    field: app_monthly.app
  - name: Epm
    title: Epm
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: app_monthly_logging
    explore: app_monthly
    listens_to_filters: []
    field: app_monthly.epm
  - name: Host
    title: Host
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: app_monthly_logging
    explore: app_monthly
    listens_to_filters: []
    field: app_monthly.host
  - name: Port
    title: Port
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: app_monthly_logging
    explore: app_monthly
    listens_to_filters: []
    field: app_monthly.port

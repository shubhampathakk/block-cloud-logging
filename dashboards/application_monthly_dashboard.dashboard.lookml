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
      App: app_monthly.app
      Epm: app_monthly.epm
      Host: app_monthly.host
      Port: app_monthly.port
      Date: app_monthly.date
    row: 0
    col: 9
    width: 5
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
      App: app_monthly.app
      Epm: app_monthly.epm
      Host: app_monthly.host
      Port: app_monthly.port
      Date: app_monthly.date
    row: 0
    col: 14
    width: 5
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
      App: app_monthly.app
      Epm: app_monthly.epm
      Host: app_monthly.host
      Port: app_monthly.port
      Date: app_monthly.date
    row: 0
    col: 19
    width: 5
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <center><img src='https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Scotiabank_logo.svg/2880px-Scotiabank_logo.svg.png'  width="180"
      height="25"></center>
    row: 0
    col: 0
    width: 9
    height: 2
  - title: Applications
    name: Applications
    model: app_monthly_logging
    explore: app_monthly
    type: looker_grid
    fields: [app_monthly.date, app_monthly.host, app_monthly.epm, app_monthly.app]
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
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Host: app_monthly.host
      App: app_monthly.app
      Epm: app_monthly.epm
      Port: app_monthly.port
      Date: app_monthly.date
    row: 2
    col: 0
    width: 24
    height: 11
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: after 1 month ago
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

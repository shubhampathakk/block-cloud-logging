---
- dashboard: pcf_dashboard
  title: PCF Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Vlfl7syuvYzmdoXGw4WEFO
  elements:
  - title: APPs
    name: APPs
    model: pcf_logging
    explore: pcf_log
    type: single_value
    fields: [pcf_log.total_app]
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
      Host: pcf_log.host
      App: pcf_log.app
      Epm: pcf_log.epm
      Port: pcf_log.port
      Ident: pcf_log.ident
      " Partitiondate Date": pcf_log._partitiondate_date
    row: 0
    col: 9
    width: 5
    height: 3
  - title: EMPs
    name: EMPs
    model: pcf_logging
    explore: pcf_log
    type: single_value
    fields: [pcf_log.total_epms]
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
      Host: pcf_log.host
      App: pcf_log.app
      Epm: pcf_log.epm
      Port: pcf_log.port
      Ident: pcf_log.ident
      " Partitiondate Date": pcf_log._partitiondate_date
    row: 0
    col: 14
    width: 5
    height: 3
  - title: Ports
    name: Ports
    model: pcf_logging
    explore: pcf_log
    type: single_value
    fields: [pcf_log.total_ports]
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
      Host: pcf_log.host
      App: pcf_log.app
      Epm: pcf_log.epm
      Port: pcf_log.port
      Ident: pcf_log.ident
      " Partitiondate Date": pcf_log._partitiondate_date
    row: 0
    col: 19
    width: 5
    height: 3
  - title: PCF Logs
    name: PCF Logs
    model: pcf_logging
    explore: pcf_log
    type: looker_grid
    fields: [pcf_log.UID, pcf_log.log_type, pcf_log.event_source, pcf_log.host, pcf_log.app,
      pcf_log.epm, pcf_log.port, pcf_log.ident, pcf_log.time, pcf_log.volume_host]
    sorts: [pcf_log.volume_host desc]
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Host: pcf_log.host
      App: pcf_log.app
      Epm: pcf_log.epm
      Port: pcf_log.port
      Ident: pcf_log.ident
      " Partitiondate Date": pcf_log._partitiondate_date
    row: 3
    col: 0
    width: 24
    height: 10
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <center><img src='https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Scotiabank_logo.svg/2880px-Scotiabank_logo.svg.png'  width="180"
      height="25"></center>
    row: 0
    col: 0
    width: 9
    height: 3
  filters:
  - name: " Partitiondate Date"
    title: " Partitiondate Date"
    type: field_filter
    default_value: 1 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: pcf_logging
    explore: pcf_log
    listens_to_filters: []
    field: pcf_log._partitiondate_date
  - name: Host
    title: Host
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: pcf_logging
    explore: pcf_log
    listens_to_filters: []
    field: pcf_log.host
  - name: App
    title: App
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: pcf_logging
    explore: pcf_log
    listens_to_filters: []
    field: pcf_log.app
  - name: Epm
    title: Epm
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: pcf_logging
    explore: pcf_log
    listens_to_filters: []
    field: pcf_log.epm
  - name: Port
    title: Port
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: pcf_logging
    explore: pcf_log
    listens_to_filters: []
    field: pcf_log.port
  - name: Ident
    title: Ident
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: pcf_logging
    explore: pcf_log
    listens_to_filters: []
    field: pcf_log.ident

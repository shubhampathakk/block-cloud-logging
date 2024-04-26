---
- dashboard: applications
  title: Applications
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 30 minutes
  preferred_slug: 7ebgr7FNh1xMtWqSK08iiG
  elements:
  - title: Applications
    name: Applications
    model: app_logging
    explore: logs
    type: looker_grid
    fields: [logs.date, logs.host, logs.ident, logs.app, logs.epm, logs.port, logs.Volume]
    filters: {}
    sorts: [logs.date desc]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      logs.Volume:
        is_active: true
        palette:
          palette_id: de1591ce-3339-af05-e706-3014e8f89679
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#e048f5"
          - "#1a73e8"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    truncate_column_names: false
    listen:
      App: logs.app
      Epm: logs.epm
      Port: logs.port
      Host: logs.host
    row: 2
    col: 0
    width: 24
    height: 12
  - title: Apps
    name: Apps
    model: app_logging
    explore: logs
    type: single_value
    fields: [logs.total_app]
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
      Epm: logs.epm
      Port: logs.port
      App: logs.app
      Host: logs.host
    row: 0
    col: 0
    width: 8
    height: 2
  - title: EPMs
    name: EPMs
    model: app_logging
    explore: logs
    type: single_value
    fields: [logs.total_epms]
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
      Epm: logs.epm
      Port: logs.port
      App: logs.app
      Host: logs.host
    row: 0
    col: 8
    width: 8
    height: 2
  - title: Ports
    name: Ports
    model: app_logging
    explore: logs
    type: single_value
    fields: [logs.total_ports]
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
      Epm: logs.epm
      Port: logs.port
      App: logs.app
      Host: logs.host
    row: 0
    col: 16
    width: 8
    height: 2
  filters:
  - name: Epm
    title: Epm
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: app_logging
    explore: logs
    listens_to_filters: []
    field: logs.epm
  - name: Port
    title: Port
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: app_logging
    explore: logs
    listens_to_filters: []
    field: logs.port
  - name: App
    title: App
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: app_logging
    explore: logs
    listens_to_filters: []
    field: logs.app
  - name: Host
    title: Host
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: app_logging
    explore: logs
    listens_to_filters: []
    field: logs.host

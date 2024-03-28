---
- dashboard: vpn_dashboard
  title: VPN Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: LxHSRltJ4BdnYv3uC4fLzN
  elements:
  - title: Mexico APPs
    name: Mexico APPs
    model: vpn_logging
    explore: vpn_mexico
    type: single_value
    fields: [vpn_mexico.distinct_apps]
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
    listen: {}
    row: 0
    col: 0
    width: 4
    height: 3
  - title: Uruguay APPs
    name: Uruguay APPs
    model: vpn_logging
    explore: vpn_uruguay
    type: single_value
    fields: [vpn_uruguay.distinct_apps]
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
      App: vpn_uruguay.app
    row: 0
    col: 4
    width: 4
    height: 3
  - title: Count of session failure for a Group
    name: Count of session failure for a Group
    model: vpn_logging
    explore: vpn_uruguay
    type: looker_grid
    fields: [vpn_uruguay.group, vpn_uruguay.session, vpn_uruguay.reason, vpn_uruguay.count]
    sorts: [rank_of_vpn_uruguay_count]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - args:
      - vpn_uruguay.count
      calculation_type: rank_of_column
      category: table_calculation
      based_on: vpn_uruguay.count
      label: Rank of Vpn Uruguay Count
      source_field: vpn_uruguay.count
      table_calculation: rank_of_vpn_uruguay_count
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
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
    hidden_fields: [rank_of_vpn_uruguay_count]
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    listen:
      " Partitiondate Date": vpn_uruguay._partitiondate_date
      Reason: vpn_uruguay.reason
    row: 0
    col: 9
    width: 12
    height: 9
  - title: Duration vs Reason for Session failure
    name: Duration vs Reason for Session failure
    model: vpn_logging
    explore: vpn_uruguay
    type: looker_area
    fields: [vpn_uruguay.duration, vpn_uruguay.reason, vpn_uruguay.count]
    pivots: [vpn_uruguay.duration]
    sorts: [vpn_uruguay.reason, vpn_uruguay.duration]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    font_size: 12
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    map: auto
    map_projection: ''
    quantize_colors: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    color_application: undefined
    hidden_series: []
    listen: {}
    row: 9
    col: 0
    width: 21
    height: 10
  - title: Session Error
    name: Session Error
    model: vpn_logging
    explore: vpn_uruguay
    type: looker_pie
    fields: [vpn_uruguay.reason, vpn_uruguay.count]
    sorts: [vpn_uruguay.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 3
    col: 0
    width: 8
    height: 6
  - title: Avg duration for per session failure
    name: Avg duration for per session failure
    model: vpn_logging
    explore: vpn_uruguay
    type: looker_grid
    fields: [vpn_uruguay.reason, vpn_uruguay.avg_duration, vpn_uruguay.count]
    sorts: [vpn_uruguay.avg_duration]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - args:
      - vpn_uruguay.count
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: vpn_uruguay.count
      label: Percent of Vpn Uruguay Count
      source_field: vpn_uruguay.count
      table_calculation: percent_of_vpn_uruguay_count
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations: {}
    defaults_version: 1
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    value_labels: legend
    label_type: labPer
    interpolation: linear
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    font_size: 12
    listen:
      Reason: vpn_uruguay.reason
    row: 19
    col: 0
    width: 8
    height: 7
  - title: Percentage of Bytes Xmt per session
    name: Percentage of Bytes Xmt per session
    model: vpn_logging
    explore: vpn_uruguay
    type: looker_pie
    fields: [vpn_uruguay.session_type, vpn_uruguay.grouped_bytes_xmt]
    sorts: [vpn_uruguay.session_type]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 26
    col: 8
    width: 7
    height: 6
  - title: Percentage of Bytes Rcv per session
    name: Percentage of Bytes Rcv per session
    model: vpn_logging
    explore: vpn_uruguay
    type: looker_pie
    fields: [vpn_uruguay.session_type, vpn_uruguay.grouped_bytes_rcv]
    sorts: [vpn_uruguay.session_type]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 26
    col: 0
    width: 8
    height: 6
  - title: Reason for top 10 IP's session failure
    name: Reason for top 10 IP's session failure
    model: vpn_logging
    explore: vpn_uruguay
    type: looker_column
    fields: [vpn_uruguay.ip, vpn_uruguay.reason, vpn_uruguay.count]
    pivots: [vpn_uruguay.reason]
    sorts: [vpn_uruguay.reason, vpn_uruguay.ip]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: vpn_uruguay.ip, id: vpn_uruguay.ip,
            name: IP}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    font_size: '12'
    series_colors: {}
    column_spacing_ratio:
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen: {}
    row: 19
    col: 8
    width: 14
    height: 7
  - title: IP's
    name: IP's
    model: vpn_logging
    explore: vpn_uruguay
    type: looker_grid
    fields: [vpn_uruguay.ip]
    sorts: [vpn_uruguay.ip desc]
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
    limit_displayed_rows: true
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
      show_hide: show
      first_last: first
      num_rows: '5'
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      IP: vpn_uruguay.ip
    row: 26
    col: 15
    width: 6
    height: 6
  - title: Data
    name: Data
    model: vpn_logging
    explore: vpn_uruguay
    type: looker_grid
    fields: [vpn_uruguay.ip, vpn_uruguay.event_source, vpn_uruguay.app, vpn_uruguay.bytes_rcv,
      vpn_uruguay.epm, vpn_uruguay.group, vpn_uruguay.host, vpn_uruguay.ident, vpn_uruguay.pid,
      vpn_uruguay.reason, vpn_uruguay.time, vpn_uruguay.username]
    sorts: [vpn_uruguay.ip]
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
      show_hide: show
      first_last: first
      num_rows: '5'
    header_background_color: "#9bc2e8"
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      " Partitiondate Date": vpn_uruguay._partitiondate_date
      Host: vpn_uruguay.host
      IP: vpn_uruguay.ip
      Reason: vpn_uruguay.reason
      App: vpn_uruguay.app
      Username: vpn_uruguay.username
    row: 38
    col: 0
    width: 21
    height: 7
  - title: Reason of failure wrt Session Type
    name: Reason of failure wrt Session Type
    model: vpn_logging
    explore: vpn_uruguay
    type: looker_donut_multiples
    fields: [vpn_uruguay.reason, vpn_uruguay.count, vpn_uruguay.session_type]
    pivots: [vpn_uruguay.reason]
    sorts: [vpn_uruguay.reason, vpn_uruguay.count desc 0]
    limit: 500
    column_limit: 50
    show_value_labels: false
    font_size: 12
    charts_across: 4
    hide_legend: false
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
    series_colors: {}
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    table_theme: white
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 32
    col: 0
    width: 21
    height: 6
  filters:
  - name: " Partitiondate Date"
    title: " Partitiondate Date"
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: true
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: vpn_logging
    explore: vpn_mexico_poc
    listens_to_filters: []
    field: vpn_uruguay_poc._partitiondate_date
  - name: IP
    title: IP
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: vpn_logging
    explore: vpn_mexico_poc
    listens_to_filters: []
    field: vpn_uruguay_poc.ip
  - name: Host
    title: Host
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: vpn_logging
    explore: vpn_mexico_poc
    listens_to_filters: []
    field: vpn_uruguay_poc.host
  - name: Reason
    title: Reason
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: vpn_logging
    explore: vpn_mexico_poc
    listens_to_filters: []
    field: vpn_uruguay_poc.reason
  - name: App
    title: App
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: vpn_logging
    explore: vpn_mexico_poc
    listens_to_filters: []
    field: vpn_uruguay_poc.app
  - name: Username
    title: Username
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: vpn_logging
    explore: vpn_uruguay
    listens_to_filters: []
    field: vpn_uruguay.username

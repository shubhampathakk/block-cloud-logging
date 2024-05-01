---
- dashboard: security_group__adc_logs
  title: Security Group - ADC Logs
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: UQXR5Ya32JdJUdbzpJeoym
  elements:
  - title: Hosts
    name: Hosts
    model: adc_logging
    explore: adc
    type: single_value
    fields: [adc.total_host]
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 3
    col: 8
    width: 4
    height: 3
  - title: Group Accounts
    name: Group Accounts
    model: adc_logging
    explore: adc
    type: single_value
    fields: [adc.total_group_account_name]
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 0
    col: 4
    width: 4
    height: 3
  - title: Apps
    name: Apps
    model: adc_logging
    explore: adc
    type: single_value
    fields: [adc.total_app]
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 0
    col: 8
    width: 4
    height: 3
  - title: Servers
    name: Servers
    model: adc_logging
    explore: adc
    type: single_value
    fields: [adc.total_servers]
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
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 0
    col: 0
    width: 4
    height: 3
  - title: EPMs
    name: EPMs
    model: adc_logging
    explore: adc
    type: single_value
    fields: [adc.total_epms]
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
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 3
    col: 0
    width: 4
    height: 3
  - title: Logs Count
    name: Logs Count
    model: adc_logging
    explore: adc
    type: single_value
    fields: [adc.count]
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
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 3
    col: 4
    width: 4
    height: 3
  - title: Log Distribution by Severity
    name: Log Distribution by Severity
    model: adc_logging
    explore: adc
    type: looker_pie
    fields: [adc.count, adc.severity]
    sorts: [adc.count desc 0]
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
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Log Distribution by Group
    name: Log Distribution by Group
    model: adc_logging
    explore: adc
    type: looker_pie
    fields: [adc.count, adc.group_domain_name]
    sorts: [adc.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
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
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Volume of logs by Day
    name: Volume of logs by Day
    model: adc_logging
    explore: adc
    type: looker_area
    fields: [adc.count, adc._partitiontime_date]
    fill_fields: [adc._partitiontime_date]
    sorts: [adc._partitiontime_date desc]
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
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    ordering: none
    show_null_labels: false
    defaults_version: 1
    hidden_pivots: {}
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hidden_fields:
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 12
    col: 12
    width: 12
    height: 6
  - title: Group - APP - EPM
    name: Group - APP - EPM
    model: adc_logging
    explore: adc
    type: looker_column
    fields: [adc.group_domain_name, adc.app, adc.epm, adc.count]
    sorts: [adc.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: true
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    y_axes: [{label: Count, orientation: left, series: [{axisId: adc.count, id: adc.count,
            name: Adc}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Group Domain - APP - EPM
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    show_dropoff: false
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    hidden_pivots: {}
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hidden_fields:
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    up_color: false
    down_color: false
    total_color: false
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 12
    col: 0
    width: 12
    height: 6
  - title: App Distribution
    name: App Distribution
    model: adc_logging
    explore: adc
    type: looker_pie
    fields: [adc.count, adc.app]
    sorts: [adc.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 50
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
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hidden_fields:
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Logs
    name: Logs
    model: adc_logging
    explore: adc
    type: looker_grid
    fields: [adc.time, adc.event_name, adc.host, adc.ident, adc.severity]
    sorts: [adc.time]
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
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 25
    col: 14
    width: 10
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <center><img src='https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Scotiabank_logo.svg/2880px-Scotiabank_logo.svg.png'  width="600"
      height="100"></center>
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Per week log flow for EPMs
    name: Per week log flow for EPMs
    model: adc_logging
    explore: adc
    type: looker_timeline
    fields: [adc.epm, adc.partitiondate_one_week_less, adc._partitiondate_date, adc.count]
    sorts: [adc.count desc]
    limit: 500
    column_limit: 50
    groupBars: true
    labelSize: 9pt
    showLegend: true
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    hidden_pivots: {}
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
    defaults_version: 1
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 31
    col: 0
    width: 24
    height: 8
  - title: 3 Days log flow for Group
    name: 3 Days log flow for Group
    model: adc_logging
    explore: adc
    type: looker_timeline
    fields: [adc.count, adc.group_domain_name, adc.partitiondate_minus_3_days, adc._partitiondate_date]
    sorts: [adc.count desc 0]
    limit: 500
    column_limit: 50
    groupBars: true
    labelSize: 9pt
    showLegend: true
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    hidden_pivots: {}
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
    defaults_version: 1
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 25
    col: 0
    width: 14
    height: 6
  - title: Detailed Logs
    name: Detailed Logs
    model: adc_logging
    explore: adc
    type: looker_grid
    fields: [adc.count, adc.account_server, adc.app, adc.dc_server, adc.destination_ip,
      adc.event_name, adc.port, adc.subject_account_name]
    sorts: [adc.count desc]
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
    show_value_labels: false
    font_size: 12
    value_labels: legend
    label_type: labPer
    inner_radius: 50
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
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hidden_fields:
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Group Domain Name: adc.group_domain_name
      Pid: adc.pid
      Port: adc.port
      App: adc.app
      Epm: adc.epm
      Date: adc.date
    row: 18
    col: 0
    width: 24
    height: 7
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
    model: adc_logging
    explore: adc
    listens_to_filters: []
    field: adc.date
  - name: Group Domain Name
    title: Group Domain Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: adc_logging
    explore: adc
    listens_to_filters: []
    field: adc.group_domain_name
  - name: Pid
    title: Pid
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: adc_logging
    explore: adc
    listens_to_filters: []
    field: adc.pid
  - name: Port
    title: Port
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: adc_logging
    explore: adc
    listens_to_filters: []
    field: adc.port
  - name: App
    title: App
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: adc_logging
    explore: adc
    listens_to_filters: []
    field: adc.app
  - name: Epm
    title: Epm
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: adc_logging
    explore: adc
    listens_to_filters: []
    field: adc.epm

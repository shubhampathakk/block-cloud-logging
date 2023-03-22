- dashboard: data_access_logs
  title: Data Access Logs
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: XhAyBzdY4Y1eHPciSphpNa
  elements:
  - title: Top Users who Accessed Data
    name: Top Users who Accessed Data
    model: cloud_logging
    explore: all_logs
    type: looker_bar
    fields: [all_logs.proto_payload__audit_log__authentication_info__principal_email,
      all_logs.count_dal_event, all_logs.proto_payload__audit_log__service_name]
    pivots: [all_logs.proto_payload__audit_log__service_name]
    filters:
      all_logs.proto_payload__audit_log__authentication_info__principal_email: "-NULL"
      all_logs.is_system_or_service_account: 'No'
      all_logs.log_id: '"cloudaudit.googleapis.com/data_access"'
    sorts: [all_logs.proto_payload__audit_log__service_name, all_logs.count_dal_event
        desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
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
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    y_axes: [{label: Data Access Events, orientation: bottom, series: [{axisId: bigquery
              - _all_logs.count_dal_event, id: bigquery - _all_logs.count_dal_event,
            name: bigquery}, {axisId: cloudsql - _all_logs.count_dal_event, id: cloudsql
              - _all_logs.count_dal_event, name: cloudsql}, {axisId: k8s - _all_logs.count_dal_event,
            id: k8s - _all_logs.count_dal_event, name: k8s}, {axisId: storage - _all_logs.count_dal_event,
            id: storage - _all_logs.count_dal_event, name: storage}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: User
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: CSA 5.01
    listen:
      Service(s): all_logs.proto_payload__audit_log__service_name
      Date: all_logs.timestamp_date
    row: 2
    col: 13
    width: 11
    height: 10
  - title: Cloud Storage Object Accessed by New IP
    name: Cloud Storage Object Accessed by New IP
    model: cloud_logging
    explore: all_logs
    type: looker_grid
    fields: [all_logs.proto_payload__audit_log__request_metadata__caller_ip, all_logs.proto_payload__audit_log__authentication_info__principal_email,
      all_logs.timestamp_date, ip_stats.first_instance_time, ip_stats.last_instance_time,
      all_logs.method_count, all_logs.resource_count]
    filters:
      all_logs.is_system_or_service_account: 'No'
      all_logs.proto_payload__audit_log__service_name: storage
      ip_stats.is_new_ip: 'Yes'
    sorts: [all_logs.timestamp_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
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
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      _all_logs.timestamp_time: Timestamp
      user_ip_stats.first_instance_time: IP First Used
      user_ip_stats.last_instance_time: IP Last Used
      all_logs.proto_payload__audit_log__authentication_info__principal_email: Email
      all_logs.proto_payload__audit_log__request_metadata__caller_ip: New IP
      all_logs.proto_payload__audit_log__method_name: Method Name
      all_logs.proto_payload__audit_log__resource_name: Resource Name
      all_logs.timestamp_date: Access Date
      ip_stats.first_instance_time: IP First Appears
      ip_stats.last_instance_time: IP Last Appears
    series_column_widths:
      _all_logs.proto_payload__audit_log__authentication_info__principal_email: 187
      _all_logs.timestamp_date: 123
      user_ip_stats.first_instance_time: 155
      _all_logs.proto_payload__audit_log__resource_name: 421
      user_ip_stats.last_instance_time: 160
      _all_logs.proto_payload__audit_log__request_metadata__caller_ip: 256
      all_logs.timestamp_date: 173
      all_logs.proto_payload__audit_log__resource_name: 438
      ip_stats.first_instance_date: 118
      ip_stats.last_instance_date: 133
      all_logs.proto_payload__audit_log__method_name: 235
      all_logs.proto_payload__audit_log__request_metadata__caller_ip: 403
      all_logs.proto_payload__audit_log__authentication_info__principal_email: 345
      ip_stats.first_instance_time: 169
      ip_stats.last_instance_time: 171
      all_logs.method_count: 193
      all_logs.resource_count: 234
    series_cell_visualizations:
      all_logs.method_count:
        is_active: true
      all_logs.resource_count:
        is_active: true
        palette:
          palette_id: 540a327a-0a3a-035b-8109-81be398be765
          collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
          custom_colors:
          - "#436FB8"
          - "#170658"
    series_text_format:
      all_logs.proto_payload__audit_log__request_metadata__caller_ip:
        bg_color: "#FFE663"
        bold: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: CSA 5.31
    listen:
      Date: all_logs.timestamp_date
    row: 23
    col: 0
    width: 24
    height: 5
  - title: Data Access by Service
    name: Data Access by Service
    model: cloud_logging
    explore: all_logs
    type: looker_column
    fields: [all_logs.count_dal_event, all_logs.proto_payload__audit_log__service_name,
      all_logs.timestamp_date]
    pivots: [all_logs.proto_payload__audit_log__service_name]
    fill_fields: [all_logs.timestamp_date]
    filters:
      all_logs.is_system_or_service_account: 'No'
      all_logs.log_id: '"cloudaudit.googleapis.com/data_access"'
    sorts: [all_logs.proto_payload__audit_log__service_name, all_logs.timestamp_date
        desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
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
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Service(s): all_logs.proto_payload__audit_log__service_name
      Date: all_logs.timestamp_date
    row: 2
    col: 0
    width: 13
    height: 10
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Data Access across All Services"}],"align":"center"},{"type":"p","children":[{"text":"(select
      services in above filter)"}],"id":1676658408271,"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Cloud Storage","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 21
    col: 0
    width: 24
    height: 2
  - title: Location of Data Access
    name: Location of Data Access
    model: cloud_logging
    explore: all_logs
    type: looker_google_map
    fields: [ip_to_geo_mapping.location, all_logs.count, ip_to_geo_mapping.city_name,
      ip_to_geo_mapping.country_name, all_logs.proto_payload__audit_log__authentication_info__principal_email]
    filters:
      all_logs.is_audit_log: 'Yes'
      all_logs.is_system_or_service_account: 'No'
      all_logs.date_granularity: day
      all_logs.log_id: '"cloudaudit.googleapis.com/data_access"'
    sorts: [all_logs.count desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 38
    map_longitude: 290
    map_zoom: 4
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_radius_min: 50000
    map_marker_radius_max: 600000
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 0
    hidden_pivots: {}
    y_axes: []
    listen:
      Date: all_logs.timestamp_date
      Service(s): all_logs.proto_payload__audit_log__service_name
    row: 12
    col: 0
    width: 24
    height: 9
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"BigQuery","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 28
    col: 0
    width: 24
    height: 2
  - title: Top Data Access Users
    name: Top Data Access Users
    model: cloud_logging
    explore: all_logs
    type: looker_grid
    fields: [all_logs.proto_payload__audit_log__authentication_info__principal_email,
      all_logs.billed_gb]
    filters:
      all_logs.log_id: '"cloudaudit.googleapis.com/data_access"'
      all_logs.proto_payload__audit_log__service_name_long: bigquery.googleapis.com
    sorts: [all_logs.billed_gb desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      all_logs.proto_payload__audit_log__authentication_info__principal_email: Email
    series_cell_visualizations:
      all_logs.billed_gb:
        is_active: true
    conditional_formatting: []
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: CSA 5.02
    listen:
      Date: all_logs.timestamp_date
      Service(s): all_logs.proto_payload__audit_log__service_name
    row: 30
    col: 0
    width: 5
    height: 6
  - title: Queries by User per Day
    name: Queries by User per Day
    model: cloud_logging
    explore: all_logs
    type: looker_area
    fields: [all_logs.proto_payload__audit_log__authentication_info__principal_email,
      all_logs.billed_gb, all_logs.timestamp_date]
    pivots: [all_logs.proto_payload__audit_log__authentication_info__principal_email]
    fill_fields: [all_logs.timestamp_date]
    filters:
      all_logs.log_id: '"cloudaudit.googleapis.com/data_access"'
      all_logs.proto_payload__audit_log__service_name_long: bigquery.googleapis.com
      all_logs.job_config_type: QUERY
    sorts: [all_logs.proto_payload__audit_log__authentication_info__principal_email
        desc, all_logs.timestamp_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: all_logs.billed_gb,
            id: trelane@google.com - all_logs.billed_gb, name: trelane@google.com},
          {axisId: all_logs.billed_gb, id: hutz@google.com - all_logs.billed_gb, name: hutz@google.com},
          {axisId: all_logs.billed_gb, id: cbaer@google.com - all_logs.billed_gb,
            name: cbaer@google.com}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors: {}
    series_labels:
      all_logs.proto_payload__audit_log__authentication_info__principal_email: Email
    label_color: ["#"]
    ordering: none
    show_null_labels: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      all_logs.billed_gb:
        is_active: true
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    note_state: collapsed
    note_display: hover
    note_text: CSA 5.03
    listen:
      Date: all_logs.timestamp_date
      Service(s): all_logs.proto_payload__audit_log__service_name
    row: 30
    col: 5
    width: 19
    height: 6
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cloud_logging
    explore: all_logs
    listens_to_filters: []
    field: all_logs.timestamp_date
  - name: Service(s)
    title: Service(s)
    type: field_filter
    default_value: bigquery,cloudsql,storage,k8s
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cloud_logging
    explore: all_logs
    listens_to_filters: []
    field: all_logs.proto_payload__audit_log__service_name

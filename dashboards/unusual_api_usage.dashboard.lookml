- dashboard: unusual_api_usage
  title: Unusual API Usage
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: TArBjdHuf8vUqS7venkCCn
  elements:
  - title: Unusual API Usage
    name: Unusual API Usage
    model: cloud_logging
    explore: unusual_api_usage
    type: looker_column
    fields: [unusual_api_usage.principal_email, unusual_api_usage.history_date, unusual_api_usage.total_log_events,
      unusual_api_usage.abnormal_threshold, unusual_api_usage.threshold]
    filters:
      unusual_api_usage.exceeds_threshold: 'Yes'
    sorts: [unusual_api_usage.total_log_events desc]
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
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      unusual_api_usage.abnormal_threshold: "#e8503f"
    series_labels:
      unusual_api_usage.total_log_events: API Events
      unusual_api_usage.abnormal_threshold: 3 Stddev of Typical Usage
    reference_lines: []
    show_null_points: true
    interpolation: linear
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
    hidden_fields: [unusual_api_usage.history_date, unusual_api_usage.threshold]
    y_axes: []
    note_state: collapsed
    note_display: above
    note_text: Each principal email below has exceeded the "normal" threshold of API
      usage on a particular day
    listen:
      Current Date: unusual_api_usage.date
      Historical Date: unusual_api_usage.historical_date
      Number of Standard Deviations: unusual_api_usage.standard_deviation
      Sample Size: unusual_api_usage.sample_size
      Is System or Service Account (Yes / No): unusual_api_usage.is_system_or_service_account
      Method / API Name: unusual_api_usage.method_name
      'Minimum # of Events': unusual_api_usage.total_log_events
    row: 4
    col: 0
    width: 24
    height: 10
  - title: Details
    name: Details
    model: cloud_logging
    explore: unusual_api_usage
    type: looker_grid
    fields: [unusual_api_usage.principal_email, unusual_api_usage.history_date, unusual_api_usage.sample_size,
      unusual_api_usage.normal_avg, unusual_api_usage.total_log_events, unusual_api_usage.abnormal_threshold]
    filters:
      unusual_api_usage.exceeds_threshold: 'Yes'
    sorts: [variance desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${unusual_api_usage.total_log_events}\
          \ - ${unusual_api_usage.abnormal_threshold}", label: Variance, value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, table_calculation: variance,
        _type_hint: number}, {category: table_calculation, expression: "${unusual_api_usage.normal_avg}",
        label: Historical Avg, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: dimension, table_calculation: historical_avg, _type_hint: number,
        is_disabled: true}]
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
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      unusual_api_usage.normal_avg: Historical Avg
      unusual_api_usage.total_log_events: API Events
      unusual_api_usage.abnormal_threshold: 3 Stddev of Historical Average
    series_cell_visualizations:
      normal_api_usage.total_log_events:
        is_active: true
      variance:
        is_active: true
    series_value_format:
      normal_api_usage.normal_avg:
        name: decimal_0
        decimals: '0'
        format_string: "#,##0"
        label: Decimals (0)
        label_prefix: Decimals
      normal_api_usage.abnormal_threshold:
        name: decimal_0
        decimals: '0'
        format_string: "#,##0"
        label: Decimals (0)
        label_prefix: Decimals
      variance:
        name: decimal_0
        decimals: '0'
        format_string: "#,##0"
        label: Decimals (0)
        label_prefix: Decimals
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    series_colors:
      unusual_api_usage.abnormal_threshold: "#e8503f"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Sample Size: unusual_api_usage.sample_size
      Current Date: unusual_api_usage.date
      Number of Standard Deviations: unusual_api_usage.standard_deviation
      Historical Date: unusual_api_usage.historical_date
      Is System or Service Account (Yes / No): unusual_api_usage.is_system_or_service_account
      Method / API Name: unusual_api_usage.method_name
      'Minimum # of Events': unusual_api_usage.total_log_events
    row: 14
    col: 0
    width: 24
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h3","children":[{"text":"How to use this dashboard"}]},{"type":"p","children":[{"text":""}],"id":1678383357236},{"type":"p","id":1678383472297,"children":[{"text":"Dates","bold":true},{"text":"
      - Use the filters above to compare API usage from a “Current Period” against
      a “Historical” time period that will represent “Normal” behavior over that time.
      "}]},{"type":"p","id":1678383439807,"children":[{"text":"Standard Deviations","bold":true},{"text":"
      - choose the threshold that should be exceeded to determine “Unusual” usage.
      "}]},{"type":"p","id":1678383525042,"children":[{"text":"Sample Size","bold":true},{"text":"
      - number of historical dates that were used to determine a “Normal” average"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 4
  filters:
  - name: Current Date
    title: Current Date
    type: field_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: cloud_logging
    explore: unusual_api_usage
    listens_to_filters: []
    field: unusual_api_usage.date
  - name: Historical Date
    title: Historical Date
    type: field_filter
    default_value: 90 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: cloud_logging
    explore: unusual_api_usage
    listens_to_filters: []
    field: unusual_api_usage.historical_date
  - name: Number of Standard Deviations
    title: Number of Standard Deviations
    type: field_filter
    default_value: '3'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cloud_logging
    explore: unusual_api_usage
    listens_to_filters: []
    field: unusual_api_usage.standard_deviation
  - name: Sample Size
    title: Sample Size
    type: field_filter
    default_value: ">=3"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
    model: cloud_logging
    explore: unusual_api_usage
    listens_to_filters: []
    field: unusual_api_usage.sample_size
  - name: 'Minimum # of Events'
    title: 'Minimum # of Events'
    type: field_filter
    default_value: ">=10"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options:
      - '1'
      - '2'
      - '3'
    model: cloud_logging
    explore: unusual_api_usage
    listens_to_filters: []
    field: unusual_api_usage.total_log_events
  - name: Is System or Service Account (Yes / No)
    title: Is System or Service Account (Yes / No)
    type: field_filter
    default_value: 'No'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: cloud_logging
    explore: unusual_api_usage
    listens_to_filters: []
    field: unusual_api_usage.is_system_or_service_account
  - name: Method / API Name
    title: Method / API Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cloud_logging
    explore: unusual_api_usage
    listens_to_filters: []
    field: unusual_api_usage.method_name

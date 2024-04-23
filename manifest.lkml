project_name: "block_gcp_cloud_logging"

################# Constants ################

## Used in all .model files as connection param
constant: CONNECTION_NAME {
  value: "sample_bigquery_connection"
  export: override_required
}
## Used in all .view files sql_table_name
constant: PROJECT_ID {
  value: "pso-gdc-japac-wedevelop-df"
  export: override_required
}
## Used in all .view files as sql_dataset_name
constant: DATASET_ID {
  value: "dataflow_demo"
  export: override_optional
}
## Used in vpn_mexico_poc.view and vpn_uruguay_poc.view as sql_table_name
constant: table_mexico {
  value: "vpn_mexico_poc"
  export: override_required
}
constant: table_uruguay {
  value: "vpn_uruguay_poc"
  export: override_required
}
## Used in app_logs.view as sql_table_name
constant: table_app_log {
  value: "app_logs"
  export: override_required
}
## Used in adc_logs.view as sql_table_name
constant: table_adc_log {
  value: "windows_event_id_4732"
  export: override_required
}

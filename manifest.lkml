project_name: "block_gcp_cloud_logging"


################# Constants ################

## Used in cloud_logging.model connection param
constant: CONNECTION_NAME {
  value: "sample_bigquery_connection"
  export: override_required
}

## Used in all_logs.view sql_table_name
constant: PROJECT_ID {
  value: "pso-gdc-japac-wedevelop-df"
  export: override_required
}

## Used in all_logs.view sql_table_name
constant: DATASET_ID {
  value: "log_looker"
  export: override_required
}

## Used in all_logs.view sql_table_name
constant: LOG_TABLE_NAME {
  value: "_AllLogs"
  export: override_optional
}

constant: NETWORK_REPORTER_SOURCE {
  value: "SRC"
  export: none
}

constant: NETWORK_REPORTER_DESTINATION {
  value: "DEST"
  export: none
}

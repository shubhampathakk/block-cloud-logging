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

## Used in vpn_mexico_poc.view and vpn_uruguay_poc.view sql_dataset_name
constant: DATASET_ID {
  value: "dataflow_demo"
  export: override_optional
}

## Used in vpn_mexico_poc.view and vpn_uruguay_poc.view sql_table_name
constant: table_mexico {
  value: "vpn_mexico_poc"
  export: override_required
}
constant: table_uruguay {
  value: "vpn_uruguay_poc"
  export: override_required
}

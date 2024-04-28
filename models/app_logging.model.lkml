connection: "@{CONNECTION_NAME}"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/dashboards/application_dashboard.dashboard.lookml"     # include a LookML dashboard called application_dashboard


# access_grant: is_employee {
#   user_attribute: host
#   allowed_values: ["10.51.144.00"]
# }

explore: logs {
  #required_access_grants: [is_employee]
  from: app_logs
  #sql_always_where: ${_partitiontime_date} >= TIMESTAMP_ADD(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY), INTERVAL -3 DAY) ;;

}

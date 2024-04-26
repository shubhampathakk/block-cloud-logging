# Define the database connection to be used for this model.
connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.


explore: vpn_mexico_logs{
  label: "VPN test Dashboard"
  join: vpn_uruguay_logs {
    type: full_outer
    relationship: many_to_many
    sql_on: ${vpn_mexico_logs.dap_user} = ${vpn_uruguay_logs.username} ;;
  }
}

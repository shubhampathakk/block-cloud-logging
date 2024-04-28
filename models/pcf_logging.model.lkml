connection: "@{CONNECTION_NAME}"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/dashboards/pcf_dashboard.dashboard.lookml"   # include a LookML dashboard called pcf_dashboard


explore: pcf_log {
  from: pcf_logs
}

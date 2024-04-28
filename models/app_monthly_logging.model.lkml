connection: "@{CONNECTION_NAME}"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/dashboards/application_monthly_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: app_monthly {
  from: app_monthly_logs
}

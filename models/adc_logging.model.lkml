connection: "@{CONNECTION_NAME}"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/dashboards/adc_dashboard.dashboard.lookml"    # include a LookML dashboard called adc_dashboard


explore: adc {
  from: adc_logs
}

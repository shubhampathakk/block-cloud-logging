# Google Cloud Logging - Log Analytics Block
Google Cloud Logging’s [Log Analytics](https://cloud.google.com/blog/products/devops-sre/introducing-cloud-loggings-log-analytics-powered-by-big-query) feature centralizes all of your log data (application, audit and network) into a single view within BigQuery. This block allows you to instantly aggregate, visualize, and alert on all of your log data using pre-built dashboards and LookML data models. You can also extend and customize the block to include other datasets and define new logic that is unique to your business.

#### Log Types Covered
- **Cloud Audit Logs** (*available now*)
- **Application Logs** &nbsp;(*coming soon*)
- **Network Logs** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (*coming soon*)



#### Included Dashboards
- **Audit Pulse**
- **Data Access Logs**
- **Unusual API Usage**
- **Principal Lookup**


## Getting Started
### Prerequisites
To make your log data visible to BigQuery, upgrade your bucket to use [Log Analytics](https://cloud.google.com/logging/docs/buckets#upgrade-bucket) and then create a [linked dataset](https://cloud.google.com/logging/docs/buckets#link-bq-dataset).

There is also an older method of moving logs into BigQuery by creating sinks. This method creates a different data structure, so you should refer to this [Looker block](https://github.com/looker/block-gcp-audit-logs-config) if you are using this method.

### Installing the Block
The block is not yet available on the [Looker Marketplace](https://marketplace.looker.com/), but will be soon. In the meantime, you can clone this git repo when [creating a new Looker project](https://cloud.google.com/looker/docs/create-projects#cloning_a_public_git_repository).


## Customizing the Block

#### Adding IP to Geography mapping data

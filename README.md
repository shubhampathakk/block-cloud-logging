# Google Cloud Logging - Log Analytics Block
Google Cloud Logging’s [Log Analytics](https://cloud.google.com/blog/products/devops-sre/introducing-cloud-loggings-log-analytics-powered-by-big-query) feature centralizes all of your log data (application, audit and network) into a single view within BigQuery. This block allows you to instantly aggregate, visualize, and alert on all of your log data using pre-built dashboards and LookML data models. You can also extend and customize the block to include other datasets and define new logic that is unique to your business.

### Log Types Covered
- **Cloud Audit Logs** (*available now*)
- **Application Logs** &nbsp;(*coming soon*)
- **Network Logs** &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (*coming soon*)



### Included Dashboards
**Cloud Audit Logs**
1. **Audit Pulse**
2. **Data Access Logs**
3. **Unusual API Usage**
4. **Principal Lookup**


## Getting Started
### Prerequisites
To make your log data visible to BigQuery, upgrade your bucket to use [Log Analytics](https://cloud.google.com/logging/docs/buckets#upgrade-bucket) and then create a [linked dataset](https://cloud.google.com/logging/docs/buckets#link-bq-dataset).

There is also an older method of moving logs into BigQuery by creating sinks. This method creates a different data structure, so you should refer to this [Looker block](https://github.com/looker/block-gcp-audit-logs-config) if you are using this method.

### Installing the Block
The block is not yet available on the [Looker Marketplace](https://marketplace.looker.com/), but will be soon. In the meantime, you can clone this git repo when [creating a new Looker project](https://cloud.google.com/looker/docs/create-projects#cloning_a_public_git_repository).


### Adding IP-to-Geography mapping data to BigQuery
A very easy and powerful way to enrich the GCP log data is by including IP Address-to-Geography mapping data, which enables you to visualize the general geographical area related to an IP address. In the block, we have used a [free license from Maxmind](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data?lang=en) (they also have a paid version), but you are welcome to use your own sources as well.

To add this data to your BigQuery database, you can follow these steps.
1. Go to Maxmind [website](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data?lang=en), create an account, and agree to the license agreement.
2. Download the [GeoLite2 City: CSV Format](https://download.maxmind.com/app/geoip_download_by_token?edition_id=GeoLite2-City-CSV&date=20230324&suffix=zip&token=v2.local.KrSgn100X0nAjM2HzzqZG24dIu8XziquJl39foWsm_hKG0J8Djo47MboFGzNaQ2QB4TVbBpZw0jrK48nHo7yFf5utyxDLBtqvG_3IpstDxFNMABw1eadzvGEFM0T8XITchBaVZuhKek541hSBsOFMJJS2IS9RKG9FoQrs3R-zFeZLhxm7B9qDreL0m8Oe3p_fVVo3g)
3. Import the below files into seperate tables in BigQuery. ([Instructions on importing data to BigQuery](https://cloud.google.com/bigquery/docs/loading-data-cloud-storage-csv))

| File Name | Table Name |
| ----- | ----- |
| GeoLite2-City-Blocks-IPv4.csv | ipv4_city_blocks |
| GeoLite2-City-Locations-en.csv | ipv4_city_locations |


## Customizing the Block

### Disabling the IP-Geography mapping data
The block is currently built with the Maxmind data lookml already incorporated. If you'd like to remove it from the model, you can do so by deleting the join *join: ip_to_geo_mapping* in the **model** file, and deleting the **view** files *ip_to_geo_mapping* and *dt_impossible_traveler*. You may also receive errors on some of the pre-built dashboards. You can delete any tiles that use this geography data.

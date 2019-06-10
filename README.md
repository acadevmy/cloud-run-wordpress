# cloud-run-wordpress
Deploy a Wordpress site on Google Cloud Run

# Deploy steps
## Build image
```sh
gcloud builds submit --tag gcr.io/[PROJECT-ID]/wp:v1
```
## Deploy image
```
gcloud beta run deploy wp --image gcr.io/[PROJECT-ID]/wp:v1 \
--add-cloudsql-instances <instance-name> \
--update-env-vars DB_HOST='127.0.0.1',DB_NAME=<dbname>,DB_USER=<dbuser>,DB_PASSWORD=<dbpass>,CLOUDSQL_INSTANCE='<project.id>:<region>:<instance-name>'
```

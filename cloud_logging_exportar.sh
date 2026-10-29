gcloud logging sinks create mi-exportacion-bq bigquery.googleapis.com/projects/proyecto-gcp-cloud-engineer/datasets/mi_dataset_reportes --log-filter="severity>=ERROR"

bq query --use_legacy_sql=false "GRANT roles/bigquery.dataEditor ON mi_dataset_reportes TO 'serviceAccount:service-960229287195@gcp-sa-logging.iam.gserviceaccount.com';"
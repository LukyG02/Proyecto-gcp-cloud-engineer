terraform destroy -auto-approve

gcloud sql instances delete mi-instancia-sql --quiet
gcloud functions delete funcion-prueba --region us-central1 --quiet
gcloud run services delete mi-servicio-run --region us-central1 --quiet
gcloud container clusters delete mi-cluster-gke --region us-central1-a --quiet
gcloud compute firewall-rules delete allow-ssh-personalizada --quiet
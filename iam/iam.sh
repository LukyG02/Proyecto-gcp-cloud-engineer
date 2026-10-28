gcloud iam service-accounts create dev-deployer --display-name "Deployer-SA"

gcloud projects add-iam-policy-binding proyecto-gcp-cloud-engineer --member="serviceAccount:dev-deployer@proyecto-gcp-cloud-engineer.iam.gserviceaccount.com" --role="roles/compute.viewer"
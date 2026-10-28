gcloud compute instances list 
gcloud compute instances describe nombre-servidor --> servidor-web-1
python3 backup_vm.py --project_id proyecto-gcp-cloud-engineer --disk_name persistent-disk-0 --snapshot_name snapshot-servidor-web-1 --zone us-central1-a
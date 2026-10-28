provider "google" { 
    project = "proyecto-gcp-cloud-engineer" 
    region  = "us-central1" 
}

resource "google_project_service" "apis" {
    for_each           = toset(["compute.googleapis.com", "container.googleapis.com", "cloudresourcemanager.googleapis.com"])
    service            = each.key
    disable_on_destroy = false
}
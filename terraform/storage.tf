resource "google_storage_bucket" "auto-expire" {
    name                        = "mi-bucket-unico-02"
    location                    = "US"
    force_destroy               = true
    uniform_bucket_level_access = true
    lifecycle_rule {
        condition {
            age = 30
        }
        action {
            type = "Delete"
        }
    }
}


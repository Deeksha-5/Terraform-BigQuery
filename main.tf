resource "google_bigquery_dataset" "main" {
  dataset_id    = var.dataset_id
  friendly_name = var.dataset_name
  description   = var.description
  location      = var.location

  default_table_expiration_ms = var.default_table_expiration_ms
  project                     = var.project_id
  labels                      = var.dataset_labels
  default_encryption_configuration {
    kms_key_name = google_kms_crypto_key.crypto_key.self_link
  }

  dynamic "access" {
    for_each = var.access
    content {
      role = access.value.role
      domain         = lookup(access.value, "domain", null)
      group_by_email = lookup(access.value, "group_by_email", null)
      user_by_email  = lookup(access.value, "user_by_email", null)
      special_group  = lookup(access.value, "special_group", null)
    }
  }
}

resource "google_kms_crypto_key" "crypto_key" {
  name     = "example-key"
  key_ring = google_kms_key_ring.key_ring.self_link
}

resource "google_kms_key_ring" "key_ring" {
  name     = "example-keyring"
  location = "us"
}


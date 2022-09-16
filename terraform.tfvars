dataset_id            = "DATASET_ID"
dataset_name          = "DATASET_NAME"
description           = "DATASET_DESCRIPTION"
location              = "LOCATION"
project_id            = "PROJECT_ID"
credentials_file_path = "CREDENTIAL"
access = [{
  role          = "roles/bigquery.dataOwner"
  special_group = "projectOwners"
}]
dataset_labels = {
  env = "dev"
}
default_table_expiration_ms = 3600000

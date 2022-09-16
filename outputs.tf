output "bigquery_dataset" {
  value       = google_bigquery_dataset.main
  description = "Bigquery dataset resource."
}

output "project" {
  value       = google_bigquery_dataset.main.project
  description = "Project where the dataset and tables are created"
}




variable "credentials_file_path" {
  description = "path of credentials file"
  type        = string
}

variable "dataset_id" {
  description = "Unique ID for the dataset being provisioned."
  type        = string
}

variable "dataset_name" {
  description = "Friendly name for the dataset being provisioned."
  type        = string
  default     = null
}

variable "description" {
  description = "Dataset description."
  type        = string
  default     = null
}

variable "location" {
  description = "The regional location for the dataset only US and EU are allowed in module"
  type        = string
  default     = "EU"
}

variable "default_table_expiration_ms" {
  description = "TTL of tables using the dataset in MS"
  type        = number
  default     = null
}

variable "dataset_labels" {
  type    = map
  default = {}
}

variable "project_id" {
  description = "Project where the dataset and table are created"
  type        = string
}

# This part should be aded for CIS Benchmarking condition(Ensure bigquery dataset is not publicly accesible)
# Below are the parameters that we can assign
# domain: A domain to grant access to.
# group_by_email: An email address of a Google Group to grant access to.
# user_by_email:  An email address of a user to grant access to.
# group_by_email: An email address of a Google Group to grant access to.
# special_group: A special group to grant access to.

variable "access" {
  description = "An array of objects that define dataset access for one or more entities."
  type        = any

  # At least one owner access is required.
}

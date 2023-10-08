variable "project_id" {
  type        = string
  description = "ID of the Google Project"
}

variable "region" {
  type        = string
  description = "Default Region"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "Default Zone"
  default     = "us-central1-a"
}

variable "cloud_server_name" {
  type        = string
  description = "Name of server"
}

variable "machine_type" {
  type        = string
  description = "Machine Type"
  default     = "e2-micro"
}


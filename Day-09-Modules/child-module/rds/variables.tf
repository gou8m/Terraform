variable "primary_identifier" {
  description = "Identifier for the primary RDS instance."
  type        = string
}

variable "replica_identifier" {
  description = "Identifier for the replica RDS instance."
  type        = string
}

variable "engine" {
  description = "The database engine to use."
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "The engine version to use."
  type        = string
  default     = "8.0"
}

variable "instance_class" {
  description = "The instance type of the RDS instance."
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage in GBs."
  type        = number
}

variable "storage_type" {
  description = "The storage type to use (e.g., gp2, gp3)."
  type        = string
  default     = "gp2"
}

variable "username" {
  description = "Master username for the RDS instance."
  type        = string
}

variable "password" {
  description = "Master password for the RDS instance."
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Database name to create."
  type        = string
}

variable "backup_retention_period" {
  description = "The days to retain backups for."
  type        = number
  default     = 1
}

variable "skip_final_snapshot" {
  description = "Whether to skip final snapshot on deletion."
  type        = bool
  default     = true
}

variable "publicly_accessible" {
  description = "Whether the DB instance is publicly accessible."
  type        = bool
  default     = true
}

variable "apply_immediately" {
  description = "Whether to apply modifications immediately."
  type        = bool
  default     = true
}

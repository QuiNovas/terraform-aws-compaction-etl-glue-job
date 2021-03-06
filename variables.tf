variable "crawler_name" {
  description = "The name of the crawler that needs to be executed at end of the workflow"
  type        = string
}

variable "cron_schedule" {
  description = "CRON for scheduling the workflow. Defaults to 12:30AM first of every month"
  type        = string
  default     = "cron(30 0 1 * ? *)" #First of every month at 12:30AM
}

variable "datalake_bucket" {
  description = "S3 bucket name that ETL job is performed upon. Required to use Compaction ETL script that is managed by this module"
  type        = string
  default     = ""
}

variable "datalake_format" {
  description = "The format of input data. ORC or Parquet. Required to use Compaction ETL script that is managed by this module"
  type        = string
  default     = ""
}

variable "datalake_prefix" {
  description = "S3 bucket prefix that ETL job is performed upon. Required to use Compaction ETL script that is managed by this module"
  type        = string
  default     = ""
}

variable "role_arn" {
  description = "The glue service role arn that ETL Job assumes. Needs access to the S3 datalake"
  type        = string
}

variable "glue_version" {
  description = "The version of glue to use"
  type        = string
  default     = "2.0"
}

variable "job_timeout" {
  description = "The job timeout in minutes. The default is 2880 minutes (48 hours)."
  type        = number
  default     = 2880
}
variable "max_concurrent_runs" {
  description = "The maximum number of concurrent runs allowed for a job. The default is 1"
  type        = number
  default     = 1
}

variable "max_retries" {
  description = "The maximum number of times to retry this job if it fails"
  type        = number
  default     = 1
}

variable "number_of_workers" {
  description = "The number of workers of a defined workerType that are allocated when a job runs."
  type        = number
  default     = 2
}

variable "optimal_partition_size" {
  description = "Optimal partition sizing of your data sets. Defaults to 512mb.  Required to use Compaction ETL script that is managed by this module"
  type        = number
  default     = 512
}

variable "prefix" {
  description = "Prefix resource names"
  type        = string
}

variable "script_location" {
  description = "User supplied script path on S3"
  type        = string
  default     = ""
}

variable "script_s3_bucket" {
  description = "S3 Bucket that script will be uploaded. Required to use Compaction ETL script that is managed by this module"
  type        = string
  default     = ""
}

variable "script_s3_prefix" {
  description = "S3 prefix to upload TF supplied ETL script. Required to use Compaction ETL script that is managed by this module"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Key-value map of resource tags"
  type        = map
  default     = {}
}

variable "worker_type" {
  description = "The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X"
  type        = string
  default     = "G.1X"
}
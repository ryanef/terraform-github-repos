variable "auto_merge" {
  default     = false
  type        = bool
}

variable "merge_commit" {
  default     = false
  type        = bool
}

variable "rebase_merge" {
  default     = true
  type        = bool
}

variable "squash_merge" {
  default     = true
  type        = bool
}

variable "description" {
  type        = string
}

variable "gitignore_template" {
  default     = null
  type        = string
}

variable "has_branch_protection" {
  default     = true
  type        = bool
}


variable "has_issues" {
  default     = false
  type        = bool
}


variable "license_template" {
  default     = null
  type        = string
}

variable "name" {
  type        = string
}

variable "owner" {
  description = "Account of the repository"
  type        = string
}

variable "topics" {
  description = "The topics of the repository"
  default     = []
  type        = list(string)
}

variable "visibility" {
  default     = "private"
  description = "The visibility of the repository"
  type        = string
}

variable "vulnerability_alerts" {
  default     = false
  description = "Whether the repository has vulnerability alerts enabled"
  type        = bool
}
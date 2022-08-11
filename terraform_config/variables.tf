variable "platforms" {
  type        = list(string)
  description = "The desired cloud platforms supporting the declared instances."
  default     = []

  validation {
    condition     = alltrue([for platform in var.platforms : contains(["aws", "azure"], platform)])
    error_message = "One of the specified cloud platforms is invalid. Only 'aws', and 'azure' are allowed."
  }
}
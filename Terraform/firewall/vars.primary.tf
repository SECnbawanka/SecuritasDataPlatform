variable "subscription_id" {
  description = "Your Azure subscription ID (set it in your environment: `<export|SET> TF_VAR_subscription_id=\"helloworld\"`)"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default = {
    ProjectName = "Data & Connectivity Project"
    Owner = "brian.renak@securitasinc.com"
    ProjectNumber = "723"
  }
}

variable "region" {
  description = "The region to deploy to"
  default     = "westeurope"
}

variable "region_suffix" {
  description = "The region as it will appear in resource names"
  default     = "we"
}

variable "powershell_command" {
  description = "The command for executing powershell differs by OS (powershell for windows, pwsh for mac)"
  default     = "powershell"
}

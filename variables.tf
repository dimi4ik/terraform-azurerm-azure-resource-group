###############################################
#location "switzerlandnorth"
###############################################
variable "location" {
  description = "Azure region to use."
  type        = string
}

variable "mandant_prefix_m" {
  description = "The mandant prefix for the MVD environment"
  type        = string
}



variable "common_tags" {
  description = "Common Tags for Azure Resources"
  type        = map(string)

}

variable "environment_tag" {
  description = "Controls the environment tag used to identify the deployment environment"
  type        = string

}

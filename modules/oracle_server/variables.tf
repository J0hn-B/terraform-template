variable "rg_name" {
  type        = string
  description = "The Name which should be used for this Resource Group."


  // You can add validation rules here.
  // https://www.terraform.io/language/values/variables#custom-validation-rules

}

variable "rg_location" {
  type        = string
  description = "The Azure Region where the Resource Group should exist."

}

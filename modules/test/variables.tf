variable "project_id" {
  type        = string
  description = "The GCP Project ID"
  default     = "terry-terraform062021"
}

variable "editor_list" {
  type        = list(string)
  description = "The list of Editors "
  default = ["terry@onixdev2.com",
    "terry.chambers@gmail.com",
      ]
}
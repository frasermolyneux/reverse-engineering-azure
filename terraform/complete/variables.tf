variable "location" {
  type = string
}

variable "resourceGroupName" {
  type = string
}

variable "storageAccountType" {
  type = string
}

variable "containerNames" {
  type = list(string)
}

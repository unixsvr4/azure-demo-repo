variable "region" {
  type = string
  default = "us-east-1"
}

provider "azurerm" {
  features = {}
}


# Module placeholders - replace with real modules or provider-specific modules.
# AKS module placeholder (use community AKS module or upstream module)

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Replace this with real infra module for your cloud'"
  }
}

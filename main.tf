#terraform {
#  backend "s3" {}
#}
#variable "test"  {}
#output "test" {
#   value = var.test
#}

module "component" {
  source = "git::https://github.com/chinna3107/tf-module-basic-test.git"
  for_each = var.component

  zone_id        = var.zone_id
  security_group = var.security_group
  name           = each.value["name"]
  instance_type  = each.value["instance_type"]

}
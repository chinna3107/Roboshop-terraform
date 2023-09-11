module "component" {
   source   = "git::https://github.com/chinna3107/tf-module-vpc.git"
   for_each = var.component

   zone_id        = var.zone_id
   security_group = var.Security_group
   name           = each.value["name"]
   instance_type  = each.value["instance_type"]

}
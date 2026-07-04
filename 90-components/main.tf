module "components" {
    for_each = var.components
    source = "git::https://github.com/akhilkumarmallineni-lgtm/roboshop-terraform-component-root-module.git?ref=main"
    environment = var.environment
    component = each.key
    app_version = each.value.app_version
    rule_priority = each.value.rule_priority
}

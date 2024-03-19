module "wrapper" {
  source = "../../modules/openzfs"

  for_each = var.items

  automatic_backup_retention_days   = try(each.value.automatic_backup_retention_days, var.defaults.automatic_backup_retention_days, null)
  backup_id                         = try(each.value.backup_id, var.defaults.backup_id, null)
  copy_tags_to_backups              = try(each.value.copy_tags_to_backups, var.defaults.copy_tags_to_backups, false)
  copy_tags_to_volumes              = try(each.value.copy_tags_to_volumes, var.defaults.copy_tags_to_volumes, false)
  create                            = try(each.value.create, var.defaults.create, true)
  create_security_group             = try(each.value.create_security_group, var.defaults.create_security_group, true)
  create_snapshot                   = try(each.value.create_snapshot, var.defaults.create_snapshot, false)
  daily_automatic_backup_start_time = try(each.value.daily_automatic_backup_start_time, var.defaults.daily_automatic_backup_start_time, null)
  deployment_type                   = try(each.value.deployment_type, var.defaults.deployment_type, null)
  disk_iops_configuration           = try(each.value.disk_iops_configuration, var.defaults.disk_iops_configuration, {})
  endpoint_ip_address_range         = try(each.value.endpoint_ip_address_range, var.defaults.endpoint_ip_address_range, null)
  kms_key_id                        = try(each.value.kms_key_id, var.defaults.kms_key_id, null)
  name                              = try(each.value.name, var.defaults.name, "")
  preferred_subnet_id               = try(each.value.preferred_subnet_id, var.defaults.preferred_subnet_id, null)
  root_volume_configuration         = try(each.value.root_volume_configuration, var.defaults.root_volume_configuration, {})
  route_table_ids                   = try(each.value.route_table_ids, var.defaults.route_table_ids, [])
  security_group_description        = try(each.value.security_group_description, var.defaults.security_group_description, null)
  security_group_egress_rules       = try(each.value.security_group_egress_rules, var.defaults.security_group_egress_rules, {})
  security_group_ids                = try(each.value.security_group_ids, var.defaults.security_group_ids, [])
  security_group_ingress_rules      = try(each.value.security_group_ingress_rules, var.defaults.security_group_ingress_rules, {})
  security_group_name               = try(each.value.security_group_name, var.defaults.security_group_name, null)
  security_group_tags               = try(each.value.security_group_tags, var.defaults.security_group_tags, {})
  security_group_use_name_prefix    = try(each.value.security_group_use_name_prefix, var.defaults.security_group_use_name_prefix, true)
  skip_final_backup                 = try(each.value.skip_final_backup, var.defaults.skip_final_backup, null)
  snapshot_name                     = try(each.value.snapshot_name, var.defaults.snapshot_name, null)
  snapshot_timeouts                 = try(each.value.snapshot_timeouts, var.defaults.snapshot_timeouts, {})
  storage_capacity                  = try(each.value.storage_capacity, var.defaults.storage_capacity, null)
  storage_type                      = try(each.value.storage_type, var.defaults.storage_type, null)
  subnet_ids                        = try(each.value.subnet_ids, var.defaults.subnet_ids, [])
  tags                              = try(each.value.tags, var.defaults.tags, {})
  throughput_capacity               = try(each.value.throughput_capacity, var.defaults.throughput_capacity, null)
  timeouts                          = try(each.value.timeouts, var.defaults.timeouts, {})
  volumes                           = try(each.value.volumes, var.defaults.volumes, {})
  volumes_timeouts                  = try(each.value.volumes_timeouts, var.defaults.volumes_timeouts, {})
  weekly_maintenance_start_time     = try(each.value.weekly_maintenance_start_time, var.defaults.weekly_maintenance_start_time, null)
}

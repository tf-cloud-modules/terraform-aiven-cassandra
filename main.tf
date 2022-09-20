resource "aiven_cassandra" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.plan
  project                 = var.project
  project_vpc_id          = var.project_vpc_id
  static_ips              = var.static_ips
  service_name            = var.service_name
  termination_protection  = var.termination_protection

  cassandra_user_config {
    cassandra_version     = var.cassandra_version
    ip_filter             = var.ip_filter
    migrate_sstableloader = var.migrate_sstableloader
    project_to_fork_from  = var.project_to_fork_from
    service_to_fork_from  = var.service_to_fork_from

    cassandra {
      batch_size_fail_threshold_in_kb = var.batch_size_fail_threshold_in_kb
      batch_size_warn_threshold_in_kb = var.batch_size_warn_threshold_in_kb
    }

    public_access {
      prometheus = var.public_access_prometheus
    }

    private_access {
      prometheus = var.private_access_prometheus
    }
  }

  dynamic "service_integrations" {
    for_each = var.service_integrations
    content {
      integration_type    = lookup(service_integrations.value, "integration_type", null)
      source_service_name = lookup(service_integrations.value, "source_service_name", null)
    }
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(tag.value, "key", null)
      value = lookup(tag.value, "value", null)
    }
  }
}
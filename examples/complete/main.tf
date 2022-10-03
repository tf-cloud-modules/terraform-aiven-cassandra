module "cassandra" {
  source       = "../.."
  project      = var.project
  service_name = "test"
  tags = [
    {
      key   = "env"
      value = "test"
    }
  ]
}

module "cassandra_user" {
  source       = "../../modules/user"
  project      = module.cassandra.project
  service_name = module.cassandra.service_name
  username     = "test"
}
module "cassandra" {
  source       = "../.."
  project      = "tf-cloud-modules"
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
  project      = "tf-cloud-modules"
  service_name = module.cassandra.service_name
  username     = "test"
}
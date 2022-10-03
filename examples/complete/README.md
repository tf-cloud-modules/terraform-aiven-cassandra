# Complete Aiven Cassandra Cluster

Configuration in this directory creates an Aiven Cassandra cluster with following features:

- Aiven Cassandra Cluster
- Aiven Cassandra User

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cassandra"></a> [cassandra](#module\_cassandra) | ../.. | n/a |
| <a name="module_cassandra_user"></a> [cassandra\_user](#module\_cassandra\_user) | ../../modules/user | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
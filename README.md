
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.67 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.67 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_codeartifact_domain.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codeartifact_domain) | resource |
| [aws_codeartifact_domain_permissions_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codeartifact_domain_permissions_policy) | resource |
| [aws_codeartifact_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codeartifact_repository) | resource |
| [aws_codeartifact_repository_permissions_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codeartifact_repository_permissions_policy) | resource |
| [aws_kms_key.kms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/kms_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | The name of the domain. | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether or not to create the resource. | `bool` | `true` | no |
| <a name="input_encryption_key"></a> [encryption\_key](#input\_encryption\_key) | The encryption key for the domain. | `string` | `null` | no |
| <a name="input_encryption_key_alias"></a> [encryption\_key\_alias](#input\_encryption\_key\_alias) | The encryption key alias for the domain. | `string` | `null` | no |
| <a name="input_policy_document"></a> [policy\_document](#input\_policy\_document) | The policy document. | `string` | `null` | no |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | A list of repositories to create in the domain. | <pre>map(object({<br>    description = optional(string)<br>    external_connections = optional(list(object({<br>      external_connection_name = optional(string)<br>    })))<br>    upstream = optional(list(object({<br>      repository_name = string<br>    })))<br>    tags            = optional(map(string))<br>    policy_document = optional(string)<br>  }))</pre> | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_domain_name"></a> [domain\_name](#output\_domain\_name) | The name of the domain |
| <a name="output_repository_names"></a> [repository\_names](#output\_repository\_names) | The names of the repositories |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb"></a> [alb](#module\_alb) | ./load-balancer | n/a |
| <a name="module_aws_ceritification_manager"></a> [aws\_ceritification\_manager](#module\_aws\_ceritification\_manager) | ./certificate-manager | n/a |
| <a name="module_hosted_zone"></a> [hosted\_zone](#module\_hosted\_zone) | ./hosted-zone | n/a |
| <a name="module_lb_target_group"></a> [lb\_target\_group](#module\_lb\_target\_group) | ./load-balancer-target-group | n/a |
| <a name="module_networking"></a> [networking](#module\_networking) | ./networking | n/a |
| <a name="module_rstudio-connect-instance"></a> [rstudio-connect-instance](#module\_rstudio-connect-instance) | ./rstudio-connect-instance | n/a |
| <a name="module_security_groups"></a> [security\_groups](#module\_security\_groups) | ./security-groups | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Remote state bucket name | `string` | n/a | yes |
| <a name="input_cidr_private_subnet"></a> [cidr\_private\_subnet](#input\_cidr\_private\_subnet) | Private Subnet CIDR values | `list(string)` | n/a | yes |
| <a name="input_cidr_public_subnet"></a> [cidr\_public\_subnet](#input\_cidr\_public\_subnet) | Public Subnet CIDR values | `list(string)` | n/a | yes |
| <a name="input_ec2_ami_id"></a> [ec2\_ami\_id](#input\_ec2\_ami\_id) | RStudio-Connect AMI Id for EC2 instance | `string` | n/a | yes |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | RStudio-Connect Public key for EC2 instance | `string` | n/a | yes |
| <a name="input_us_availability_zone"></a> [us\_availability\_zone](#input\_us\_availability\_zone) | Availability Zones | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | Public Subnet CIDR values | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | RStudio-Connect VPC 1 | `string` | n/a | yes |

## Outputs

No outputs.

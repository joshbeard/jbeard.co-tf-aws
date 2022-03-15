# jbeard.co AWS Deployment

This is a Terraform codebase for deploying AWS resources for the
[jbeard.co](https://jbeard.co) website.

* Uses the [tf-aws-site](https://github.com/joshbeard/tf-aws-site) module for
  deploying the common resources for this website (S3, CloudFront, ACM, IAM, Route53)
* Uses the [tf-migadu-route53](https://github.com/joshbeard/tf-migadu-route53)
  module for managing DNS records for mail in Route53.
* Uses my [websites-tf-remote-backend](https://github.com/joshbeard/websites-tf-remote-backend) for Terraform state.

The [`Makefile`](Makefile) is included for local use for running Terraform in Docker.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_jbeard_co_aws"></a> [jbeard\_co\_aws](#module\_jbeard\_co\_aws) | github.com/joshbeard/tf-aws-site.git | n/a |
| <a name="module_jbeard_co_migadu"></a> [jbeard\_co\_migadu](#module\_jbeard\_co\_migadu) | github.com/joshbeard/tf-migadu-route53.git | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->

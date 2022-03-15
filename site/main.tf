# Deployment of AWS resources for jbeard.co
module "jbeard_co_aws" {
  source = "github.com/joshbeard/tf-aws-site.git"

  domain      = "jbeard.co"
  bucket_name = "s3-website-jbeard-co"
  iam_name    = "s3-deployer-jbeard-co"
  tags        = { "git_repo" : "https://github.com/joshbeard/jbeard.co-tf-aws" }
}

module "jbeard_co_migadu" {
  source = "github.com/joshbeard/tf-migadu-route53.git"

  domain        = "jbeard.co"
  zone_id       = module.jbeard_co_aws.route53_zone_id
  migadu_verify = "v3jbz5qj"
}

/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:990828982247:environment/sample-vpc-environment-template

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

output "vpc_arn" {
  value = module.vpc.vpc_arn
}

output "private_subnet_id" {
  value          = [for az, subnet in aws_subnet.private: subnet.id]
}
  
output "public_subnet_id" {
  value          = [for az, subnet in aws_subnet.public: subnet.id]
}

output "security_group_id" {
  value = module.vpc.default_security_group_id
}

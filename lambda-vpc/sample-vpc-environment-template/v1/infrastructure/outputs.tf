output "private_subnet_id" {
  value          = [for az, subnet in aws_subnet.private: subnet.id]
}
output "public_subnet_id" {
  value          = [for az, subnet in aws_subnet.public: subnet.id]
}
output "security_group_id" {
  value = module.vpc.default_security_group_id
}

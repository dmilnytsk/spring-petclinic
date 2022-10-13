output "aws_vpc_lamp_vpc_id" {

  description = "Public IP of EC2 instance"

  value       = aws_vpc.lamp_vpc.id

}

output "var_vpc_cidr" {

  description = "Public IP of EC2 instance"

  value       = var.vpc_cidr

}

output "aws_vpc_lamp_vpc_default_route_table_id" {

  description = "Public IP of EC2 instance"

  value       = aws_vpc.lamp_vpc.default_route_table_id

}

output "aws_vpc_lamp_vpc_default_network_acl_id" {

  description = "Public IP of EC2 instance"

  value       = aws_vpc.lamp_vpc.default_network_acl_id

}

output "aws_db_subnet_group_databasegroup_name" {

  description = "Public IP of EC2 instance"

  value       = aws_db_subnet_group.databasegroup.name

}

output "aws_subnet_websubnets_id" {

  description = "Public IP of EC2 instance"
  
  value       = aws_subnet.websubnets[0].id

}

output "aws_security_group_lbsg_id" {

  description = "Public IP of EC2 instance"

  value       = aws_security_group.lbsg.id

}
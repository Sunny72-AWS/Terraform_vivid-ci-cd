output "alb_dns_name" {
  description = "ALB URL"
  value       = aws_lb.alb.dns_name
}

output "ec2_public_ip" {
  description = "EC2 Public IP"
  value       = aws_instance.web.public_ip
}

output "environment" {
  value = terraform.workspace
}
output "root_domain" {
  value       = aws_route53_zone.root_zone.name
  description = "Root domain for the project."
}

output "root_zone_id" {
  value       = aws_route53_zone.root_zone.zone_id
  description = "Root hosted zone ID for the domain."
}

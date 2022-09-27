# Create the root hosted zone for open592.com
resource "aws_route53_zone" "root_zone" {
  name = var.ROOT_DOMAIN
}

resource "aws_route53_record" "root_ns" {
  allow_overwrite = true
  name            = var.ROOT_DOMAIN
  ttl             = 30
  type            = "NS"
  zone_id         = aws_route53_zone.root_zone.zone_id
  records         = aws_route53_zone.root_zone.name_servers
}

resource "aws_route53_record" "google_workspaces_gmail_mx" {
  zone_id = aws_route53_zone.root_zone.zone_id
  name    = aws_route53_zone.root_zone.name
  type    = "MX"
  ttl     = 30

  records = [
    "1 SMTP.GOOGLE.COM."
  ]
}

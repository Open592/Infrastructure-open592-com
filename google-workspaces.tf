resource "aws_route53_record" "google_workspaces_verification_txt" {
  zone_id = aws_route53_zone.root_zone.zone_id
  name    = "google-site-verification.${aws_route53_zone.root_zone.name}"
  type    = "TXT"
  ttl     = 3600

  records = [
    "google-site-verification=ewOeJ2xXCPitq6QBhR9jUjnxkoybd1JJ3hb7b2RrovE"
  ]
}

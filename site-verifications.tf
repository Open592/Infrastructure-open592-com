resource "aws_route53_record" "site_verification_txt_records" {
  zone_id = aws_route53_zone.root_zone.zone_id
  name    = aws_route53_zone.root_zone.name
  type    = "TXT"
  ttl     = 3600

  records = [
    "google-site-verification=ewOeJ2xXCPitq6QBhR9jUjnxkoybd1JJ3hb7b2RrovE",
    # TODO: Remove this once migration to Google workspaces is complete
    var.PROTON_MAIL_VERIFICATION,
    "v=spf1 include:_spf.protonmail.ch mx ~all"
  ]
}

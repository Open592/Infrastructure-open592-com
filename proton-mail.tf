# DNS settings required for proton mail

resource "aws_route53_record" "proton_mail_mx" {
  zone_id = aws_route53_zone.root_zone.zone_id
  name    = aws_route53_zone.root_zone.name
  type    = "MX"
  ttl     = 30

  records = [
    "10 mail.protonmail.ch.",
    "20 mailsec.protonmail.ch."
  ]
}

resource "aws_route53_record" "proton_mail_dkim_1" {
  zone_id = aws_route53_zone.root_zone.zone_id
  name    = "protonmail._domainkey"
  type    = "CNAME"
  ttl     = 3600

  records = [
    var.PROTON_MAIL_DOMAIN_KEY_1
  ]
}

resource "aws_route53_record" "proton_mail_dkim_2" {
  zone_id = aws_route53_zone.root_zone.zone_id
  name    = "protonmail2._domainkey"
  type    = "CNAME"
  ttl     = 3600

  records = [
    var.PROTON_MAIL_DOMAIN_KEY_2
  ]
}

resource "aws_route53_record" "proton_mail_dkim_3" {
  zone_id = aws_route53_zone.root_zone.zone_id
  name    = "protonmail3._domainkey"
  type    = "CNAME"
  ttl     = 3600

  records = [
    var.PROTON_MAIL_DOMAIN_KEY_3
  ]
}

resource "aws_route53_record" "proton_mail_dmarc" {
  zone_id = aws_route53_zone.root_zone.zone_id
  name    = "_dmarc"
  type    = "TXT"
  ttl     = 3600

  records = [
    "v=DMARC1; p=none"
  ]
}

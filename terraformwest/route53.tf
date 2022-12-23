/*
# Create a Route53 hosted zone for the domain "yovi.ml"
resource "aws_route53_zone" "main" {
  name = "yovi.ml."
}


# Create an A record in the hosted zone that points to the ELB
resource "aws_route53_record" "a_record" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "api-${var.region}.yovi.ml"
  type    = "A"
  alias {
    name                   = aws_lb.main.*.dns_name[0]
    zone_id                = aws_lb.main.zone_id
    evaluate_target_health = true
  }
}

# Create an CNAME record in the hosted zone that points to the A record
resource "aws_route53_record" "api_cname_recoord" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "api.yovi.ml"
  type    = "CNAME"
  alias {
    name                   = aws_route53_record.a_record.name
    zone_id                = aws_route53_zone.main.zone_id
    evaluate_target_health = true
  }
}
*/
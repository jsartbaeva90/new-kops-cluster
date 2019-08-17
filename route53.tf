
resource "aws_route53_record" "api-kubernetes-zhazgul-com" {
  name = "api.kubernetes-zhazgul.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-kubernetes-zhazgul-com.dns_name}"
    zone_id                = "${aws_elb.api-kubernetes-zhazgul-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZEKU5BG6OK3M1"
}

resource "aws_route53_record" "bastion-kubernetes-zhazgul-com" {
  name = "bastion.kubernetes-zhazgul.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-kubernetes-zhazgul-com.dns_name}"
    zone_id                = "${aws_elb.bastion-kubernetes-zhazgul-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZEKU5BG6OK3M1"
}

resource "aws_route53_zone_association" "ZEKU5BG6OK3M1" {
  zone_id = "/hostedzone/ZEKU5BG6OK3M1"
  vpc_id  = "${aws_vpc.kubernetes-zhazgul-com.id}"
}

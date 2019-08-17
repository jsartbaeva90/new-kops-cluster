
resource "aws_elb" "api-kubernetes-zhazgul-com" {
  name = "api-kubernetes-zhazgul-co-rdthd9"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-kubernetes-zhazgul-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-2a-kubernetes-zhazgul-com.id}", "${aws_subnet.utility-eu-west-2b-kubernetes-zhazgul-com.id}", "${aws_subnet.utility-eu-west-2c-kubernetes-zhazgul-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "api.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_elb" "bastion-kubernetes-zhazgul-com" {
  name = "bastion-kubernetes-zhazgu-dbfjhb"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-kubernetes-zhazgul-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-2a-kubernetes-zhazgul-com.id}", "${aws_subnet.utility-eu-west-2b-kubernetes-zhazgul-com.id}", "${aws_subnet.utility-eu-west-2c-kubernetes-zhazgul-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "bastion.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

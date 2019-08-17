
resource "aws_nat_gateway" "eu-west-2a-kubernetes-zhazgul-com" {
  allocation_id = "${aws_eip.eu-west-2a-kubernetes-zhazgul-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-2a-kubernetes-zhazgul-com.id}"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "eu-west-2a.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-2b-kubernetes-zhazgul-com" {
  allocation_id = "${aws_eip.eu-west-2b-kubernetes-zhazgul-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-2b-kubernetes-zhazgul-com.id}"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "eu-west-2b.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-2c-kubernetes-zhazgul-com" {
  allocation_id = "${aws_eip.eu-west-2c-kubernetes-zhazgul-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-2c-kubernetes-zhazgul-com.id}"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "eu-west-2c.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

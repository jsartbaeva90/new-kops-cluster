
resource "aws_route_table" "kubernetes-zhazgul-com" {
  vpc_id = "${aws_vpc.kubernetes-zhazgul-com.id}"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
    "kubernetes.io/kops/role"                      = "public"
  }
}

resource "aws_route_table" "private-eu-west-2a-kubernetes-zhazgul-com" {
  vpc_id = "${aws_vpc.kubernetes-zhazgul-com.id}"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "private-eu-west-2a.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
    "kubernetes.io/kops/role"                      = "private-eu-west-2a"
  }
}

resource "aws_route_table" "private-eu-west-2b-kubernetes-zhazgul-com" {
  vpc_id = "${aws_vpc.kubernetes-zhazgul-com.id}"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "private-eu-west-2b.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
    "kubernetes.io/kops/role"                      = "private-eu-west-2b"
  }
}

resource "aws_route_table" "private-eu-west-2c-kubernetes-zhazgul-com" {
  vpc_id = "${aws_vpc.kubernetes-zhazgul-com.id}"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "private-eu-west-2c.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
    "kubernetes.io/kops/role"                      = "private-eu-west-2c"
  }
}

resource "aws_route_table_association" "private-eu-west-2a-kubernetes-zhazgul-com" {
  subnet_id      = "${aws_subnet.eu-west-2a-kubernetes-zhazgul-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-2a-kubernetes-zhazgul-com.id}"
}

resource "aws_route_table_association" "private-eu-west-2b-kubernetes-zhazgul-com" {
  subnet_id      = "${aws_subnet.eu-west-2b-kubernetes-zhazgul-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-2b-kubernetes-zhazgul-com.id}"
}

resource "aws_route_table_association" "private-eu-west-2c-kubernetes-zhazgul-com" {
  subnet_id      = "${aws_subnet.eu-west-2c-kubernetes-zhazgul-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-2c-kubernetes-zhazgul-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-2a-kubernetes-zhazgul-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-2a-kubernetes-zhazgul-com.id}"
  route_table_id = "${aws_route_table.kubernetes-zhazgul-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-2b-kubernetes-zhazgul-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-2b-kubernetes-zhazgul-com.id}"
  route_table_id = "${aws_route_table.kubernetes-zhazgul-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-2c-kubernetes-zhazgul-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-2c-kubernetes-zhazgul-com.id}"
  route_table_id = "${aws_route_table.kubernetes-zhazgul-com.id}"
}

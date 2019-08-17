
resource "aws_subnet" "eu-west-2a-kubernetes-zhazgul-com" {
  vpc_id            = "${aws_vpc.kubernetes-zhazgul-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-2a"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "eu-west-2a.kubernetes-zhazgul.com"
    SubnetType                                     = "Private"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
    "kubernetes.io/role/internal-elb"              = "1"
  }
}

resource "aws_subnet" "eu-west-2b-kubernetes-zhazgul-com" {
  vpc_id            = "${aws_vpc.kubernetes-zhazgul-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-2b"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "eu-west-2b.kubernetes-zhazgul.com"
    SubnetType                                     = "Private"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
    "kubernetes.io/role/internal-elb"              = "1"
  }
}

resource "aws_subnet" "eu-west-2c-kubernetes-zhazgul-com" {
  vpc_id            = "${aws_vpc.kubernetes-zhazgul-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-2c"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "eu-west-2c.kubernetes-zhazgul.com"
    SubnetType                                     = "Private"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
    "kubernetes.io/role/internal-elb"              = "1"
  }
}

resource "aws_subnet" "utility-eu-west-2a-kubernetes-zhazgul-com" {
  vpc_id            = "${aws_vpc.kubernetes-zhazgul-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-2a"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "utility-eu-west-2a.kubernetes-zhazgul.com"
    SubnetType                                     = "Utility"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
    "kubernetes.io/role/elb"                       = "1"
  }
}

resource "aws_subnet" "utility-eu-west-2b-kubernetes-zhazgul-com" {
  vpc_id            = "${aws_vpc.kubernetes-zhazgul-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-2b"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "utility-eu-west-2b.kubernetes-zhazgul.com"
    SubnetType                                     = "Utility"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
    "kubernetes.io/role/elb"                       = "1"
  }
}

resource "aws_subnet" "utility-eu-west-2c-kubernetes-zhazgul-com" {
  vpc_id            = "${aws_vpc.kubernetes-zhazgul-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-2c"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "utility-eu-west-2c.kubernetes-zhazgul.com"
    SubnetType                                     = "Utility"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
    "kubernetes.io/role/elb"                       = "1"
  }
}

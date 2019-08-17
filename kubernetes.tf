
resource "aws_vpc" "kubernetes-zhazgul-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "kubernetes-zhazgul-com" {
  domain_name         = "eu-west-2.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "kubernetes-zhazgul-com" {
  vpc_id          = "${aws_vpc.kubernetes-zhazgul-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.kubernetes-zhazgul-com.id}"
}


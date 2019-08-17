
resource "aws_internet_gateway" "kubernetes-zhazgul-com" {
  vpc_id = "${aws_vpc.kubernetes-zhazgul-com.id}"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

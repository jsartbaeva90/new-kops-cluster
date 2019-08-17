
resource "aws_eip" "eu-west-2a-kubernetes-zhazgul-com" {
  vpc = true

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "eu-west-2a.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_eip" "eu-west-2b-kubernetes-zhazgul-com" {
  vpc = true

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "eu-west-2b.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_eip" "eu-west-2c-kubernetes-zhazgul-com" {
  vpc = true

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "eu-west-2c.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

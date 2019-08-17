
resource "aws_ebs_volume" "a-etcd-events-kubernetes-zhazgul-com" {
  availability_zone = "eu-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "a.etcd-events.kubernetes-zhazgul.com"
    "k8s.io/etcd/events"                           = "a/a,b,c"
    "k8s.io/role/master"                           = "1"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-kubernetes-zhazgul-com" {
  availability_zone = "eu-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "a.etcd-main.kubernetes-zhazgul.com"
    "k8s.io/etcd/main"                             = "a/a,b,c"
    "k8s.io/role/master"                           = "1"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-kubernetes-zhazgul-com" {
  availability_zone = "eu-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "b.etcd-events.kubernetes-zhazgul.com"
    "k8s.io/etcd/events"                           = "b/a,b,c"
    "k8s.io/role/master"                           = "1"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-kubernetes-zhazgul-com" {
  availability_zone = "eu-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "b.etcd-main.kubernetes-zhazgul.com"
    "k8s.io/etcd/main"                             = "b/a,b,c"
    "k8s.io/role/master"                           = "1"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-kubernetes-zhazgul-com" {
  availability_zone = "eu-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "c.etcd-events.kubernetes-zhazgul.com"
    "k8s.io/etcd/events"                           = "c/a,b,c"
    "k8s.io/role/master"                           = "1"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-kubernetes-zhazgul-com" {
  availability_zone = "eu-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "c.etcd-main.kubernetes-zhazgul.com"
    "k8s.io/etcd/main"                             = "c/a,b,c"
    "k8s.io/role/master"                           = "1"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

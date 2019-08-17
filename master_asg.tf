
resource "aws_autoscaling_group" "master-eu-west-2a-masters-kubernetes-zhazgul-com" {
  name                 = "master-eu-west-2a.masters.kubernetes-zhazgul.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-2a-masters-kubernetes-zhazgul-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-2a-kubernetes-zhazgul-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetes-zhazgul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-2a.masters.kubernetes-zhazgul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-2a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-2b-masters-kubernetes-zhazgul-com" {
  name                 = "master-eu-west-2b.masters.kubernetes-zhazgul.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-2b-masters-kubernetes-zhazgul-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-2b-kubernetes-zhazgul-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetes-zhazgul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-2b.masters.kubernetes-zhazgul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-2b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-2c-masters-kubernetes-zhazgul-com" {
  name                 = "master-eu-west-2c.masters.kubernetes-zhazgul.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-2c-masters-kubernetes-zhazgul-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-2c-kubernetes-zhazgul-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetes-zhazgul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-2c.masters.kubernetes-zhazgul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-2c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

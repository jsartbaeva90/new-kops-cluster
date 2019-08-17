
resource "aws_autoscaling_group" "bastions-kubernetes-zhazgul-com" {
  name                 = "bastions.kubernetes-zhazgul.com"
  launch_configuration = "${aws_launch_configuration.bastions-kubernetes-zhazgul-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-2a-kubernetes-zhazgul-com.id}", "${aws_subnet.utility-eu-west-2b-kubernetes-zhazgul-com.id}", "${aws_subnet.utility-eu-west-2c-kubernetes-zhazgul-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetes-zhazgul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.kubernetes-zhazgul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

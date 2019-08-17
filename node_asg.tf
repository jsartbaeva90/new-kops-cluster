
resource "aws_autoscaling_group" "nodes-kubernetes-zhazgul-com" {
  name                 = "nodes.kubernetes-zhazgul.com"
  launch_configuration = "${aws_launch_configuration.nodes-kubernetes-zhazgul-com.id}"
  max_size             = "${var.node_max_size}"
  min_size             = "${var.node_min_size}"
  vpc_zone_identifier  = ["${aws_subnet.eu-west-2a-kubernetes-zhazgul-com.id}", "${aws_subnet.eu-west-2b-kubernetes-zhazgul-com.id}", "${aws_subnet.eu-west-2c-kubernetes-zhazgul-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetes-zhazgul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.kubernetes-zhazgul.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

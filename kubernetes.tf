
resource "aws_autoscaling_attachment" "bastions-kubernetes-zhazgul-com" {
  elb                    = "${aws_elb.bastion-kubernetes-zhazgul-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-kubernetes-zhazgul-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-2a-masters-kubernetes-zhazgul-com" {
  elb                    = "${aws_elb.api-kubernetes-zhazgul-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-2a-masters-kubernetes-zhazgul-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-2b-masters-kubernetes-zhazgul-com" {
  elb                    = "${aws_elb.api-kubernetes-zhazgul-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-2b-masters-kubernetes-zhazgul-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-2c-masters-kubernetes-zhazgul-com" {
  elb                    = "${aws_elb.api-kubernetes-zhazgul-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-2c-masters-kubernetes-zhazgul-com.id}"
}

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

resource "aws_autoscaling_group" "nodes-kubernetes-zhazgul-com" {
  name                 = "nodes.kubernetes-zhazgul.com"
  launch_configuration = "${aws_launch_configuration.nodes-kubernetes-zhazgul-com.id}"
  max_size             = 2
  min_size             = 2
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

resource "aws_elb" "api-kubernetes-zhazgul-com" {
  name = "api-kubernetes-zhazgul-co-rdthd9"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-kubernetes-zhazgul-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-2a-kubernetes-zhazgul-com.id}", "${aws_subnet.utility-eu-west-2b-kubernetes-zhazgul-com.id}", "${aws_subnet.utility-eu-west-2c-kubernetes-zhazgul-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "api.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_elb" "bastion-kubernetes-zhazgul-com" {
  name = "bastion-kubernetes-zhazgu-dbfjhb"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-kubernetes-zhazgul-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-2a-kubernetes-zhazgul-com.id}", "${aws_subnet.utility-eu-west-2b-kubernetes-zhazgul-com.id}", "${aws_subnet.utility-eu-west-2c-kubernetes-zhazgul-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "bastion.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-kubernetes-zhazgul-com" {
  name = "bastions.kubernetes-zhazgul.com"
  role = "${aws_iam_role.bastions-kubernetes-zhazgul-com.name}"
}

resource "aws_iam_instance_profile" "masters-kubernetes-zhazgul-com" {
  name = "masters.kubernetes-zhazgul.com"
  role = "${aws_iam_role.masters-kubernetes-zhazgul-com.name}"
}

resource "aws_iam_instance_profile" "nodes-kubernetes-zhazgul-com" {
  name = "nodes.kubernetes-zhazgul.com"
  role = "${aws_iam_role.nodes-kubernetes-zhazgul-com.name}"
}

resource "aws_iam_role" "bastions-kubernetes-zhazgul-com" {
  name               = "bastions.kubernetes-zhazgul.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.kubernetes-zhazgul.com_policy")}"
}

resource "aws_iam_role" "masters-kubernetes-zhazgul-com" {
  name               = "masters.kubernetes-zhazgul.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.kubernetes-zhazgul.com_policy")}"
}

resource "aws_iam_role" "nodes-kubernetes-zhazgul-com" {
  name               = "nodes.kubernetes-zhazgul.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.kubernetes-zhazgul.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-kubernetes-zhazgul-com" {
  name   = "bastions.kubernetes-zhazgul.com"
  role   = "${aws_iam_role.bastions-kubernetes-zhazgul-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.kubernetes-zhazgul.com_policy")}"
}

resource "aws_iam_role_policy" "masters-kubernetes-zhazgul-com" {
  name   = "masters.kubernetes-zhazgul.com"
  role   = "${aws_iam_role.masters-kubernetes-zhazgul-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.kubernetes-zhazgul.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-kubernetes-zhazgul-com" {
  name   = "nodes.kubernetes-zhazgul.com"
  role   = "${aws_iam_role.nodes-kubernetes-zhazgul-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.kubernetes-zhazgul.com_policy")}"
}

resource "aws_internet_gateway" "kubernetes-zhazgul-com" {
  vpc_id = "${aws_vpc.kubernetes-zhazgul-com.id}"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-kubernetes-zhazgul-com-25a71ebf0bc5fe878f802b99169138ea" {
  key_name   = "kubernetes.kubernetes-zhazgul.com-25:a7:1e:bf:0b:c5:fe:87:8f:80:2b:99:16:91:38:ea"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetes-zhazgul.com-25a71ebf0bc5fe878f802b99169138ea_public_key")}"
}

resource "aws_launch_configuration" "bastions-kubernetes-zhazgul-com" {
  name_prefix                 = "bastions.kubernetes-zhazgul.com-"
  image_id                    = "ami-00d3181bc89480a82"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetes-zhazgul-com-25a71ebf0bc5fe878f802b99169138ea.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-kubernetes-zhazgul-com.id}"
  security_groups             = ["${aws_security_group.bastion-kubernetes-zhazgul-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-2a-masters-kubernetes-zhazgul-com" {
  name_prefix                 = "master-eu-west-2a.masters.kubernetes-zhazgul.com-"
  image_id                    = "ami-00d3181bc89480a82"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetes-zhazgul-com-25a71ebf0bc5fe878f802b99169138ea.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetes-zhazgul-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetes-zhazgul-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-2a.masters.kubernetes-zhazgul.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-2b-masters-kubernetes-zhazgul-com" {
  name_prefix                 = "master-eu-west-2b.masters.kubernetes-zhazgul.com-"
  image_id                    = "ami-00d3181bc89480a82"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetes-zhazgul-com-25a71ebf0bc5fe878f802b99169138ea.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetes-zhazgul-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetes-zhazgul-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-2b.masters.kubernetes-zhazgul.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-2c-masters-kubernetes-zhazgul-com" {
  name_prefix                 = "master-eu-west-2c.masters.kubernetes-zhazgul.com-"
  image_id                    = "ami-00d3181bc89480a82"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetes-zhazgul-com-25a71ebf0bc5fe878f802b99169138ea.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetes-zhazgul-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetes-zhazgul-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-2c.masters.kubernetes-zhazgul.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-kubernetes-zhazgul-com" {
  name_prefix                 = "nodes.kubernetes-zhazgul.com-"
  image_id                    = "ami-00d3181bc89480a82"
  instance_type               = "m4.large"
  key_name                    = "${aws_key_pair.kubernetes-kubernetes-zhazgul-com-25a71ebf0bc5fe878f802b99169138ea.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-kubernetes-zhazgul-com.id}"
  security_groups             = ["${aws_security_group.nodes-kubernetes-zhazgul-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.kubernetes-zhazgul.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

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

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.kubernetes-zhazgul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.kubernetes-zhazgul-com.id}"
}

resource "aws_route" "private-eu-west-2a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-2a-kubernetes-zhazgul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-2a-kubernetes-zhazgul-com.id}"
}

resource "aws_route" "private-eu-west-2b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-2b-kubernetes-zhazgul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-2b-kubernetes-zhazgul-com.id}"
}

resource "aws_route" "private-eu-west-2c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-2c-kubernetes-zhazgul-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-2c-kubernetes-zhazgul-com.id}"
}

resource "aws_route53_record" "api-kubernetes-zhazgul-com" {
  name = "api.kubernetes-zhazgul.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-kubernetes-zhazgul-com.dns_name}"
    zone_id                = "${aws_elb.api-kubernetes-zhazgul-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZEKU5BG6OK3M1"
}

resource "aws_route53_record" "bastion-kubernetes-zhazgul-com" {
  name = "bastion.kubernetes-zhazgul.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-kubernetes-zhazgul-com.dns_name}"
    zone_id                = "${aws_elb.bastion-kubernetes-zhazgul-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZEKU5BG6OK3M1"
}

resource "aws_route53_zone_association" "ZEKU5BG6OK3M1" {
  zone_id = "/hostedzone/ZEKU5BG6OK3M1"
  vpc_id  = "${aws_vpc.kubernetes-zhazgul-com.id}"
}

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

resource "aws_security_group" "api-elb-kubernetes-zhazgul-com" {
  name        = "api-elb.kubernetes-zhazgul.com"
  vpc_id      = "${aws_vpc.kubernetes-zhazgul-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "api-elb.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-kubernetes-zhazgul-com" {
  name        = "bastion-elb.kubernetes-zhazgul.com"
  vpc_id      = "${aws_vpc.kubernetes-zhazgul-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "bastion-elb.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_security_group" "bastion-kubernetes-zhazgul-com" {
  name        = "bastion.kubernetes-zhazgul.com"
  vpc_id      = "${aws_vpc.kubernetes-zhazgul-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "bastion.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_security_group" "masters-kubernetes-zhazgul-com" {
  name        = "masters.kubernetes-zhazgul.com"
  vpc_id      = "${aws_vpc.kubernetes-zhazgul-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "masters.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_security_group" "nodes-kubernetes-zhazgul-com" {
  name        = "nodes.kubernetes-zhazgul.com"
  vpc_id      = "${aws_vpc.kubernetes-zhazgul-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                              = "kubernetes-zhazgul.com"
    Name                                           = "nodes.kubernetes-zhazgul.com"
    "kubernetes.io/cluster/kubernetes-zhazgul.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetes-zhazgul-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetes-zhazgul-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetes-zhazgul-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-kubernetes-zhazgul-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-kubernetes-zhazgul-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetes-zhazgul-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetes-zhazgul-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetes-zhazgul-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetes-zhazgul-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-kubernetes-zhazgul-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetes-zhazgul-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-kubernetes-zhazgul-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-kubernetes-zhazgul-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetes-zhazgul-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetes-zhazgul-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetes-zhazgul-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetes-zhazgul-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-kubernetes-zhazgul-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-kubernetes-zhazgul-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetes-zhazgul-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

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

terraform = {
  required_version = ">= 0.9.3"
}


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

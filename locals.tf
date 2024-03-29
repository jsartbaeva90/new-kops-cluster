locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-kubernetes-zhazgul-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-kubernetes-zhazgul-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-kubernetes-zhazgul-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-kubernetes-zhazgul-com.name}"
  cluster_name                      = "kubernetes-zhazgul.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-eu-west-2a-masters-kubernetes-zhazgul-com.id}", "${aws_autoscaling_group.master-eu-west-2b-masters-kubernetes-zhazgul-com.id}", "${aws_autoscaling_group.master-eu-west-2c-masters-kubernetes-zhazgul-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-kubernetes-zhazgul-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-kubernetes-zhazgul-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-kubernetes-zhazgul-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-kubernetes-zhazgul-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-kubernetes-zhazgul-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.eu-west-2a-kubernetes-zhazgul-com.id}", "${aws_subnet.eu-west-2b-kubernetes-zhazgul-com.id}", "${aws_subnet.eu-west-2c-kubernetes-zhazgul-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-kubernetes-zhazgul-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-kubernetes-zhazgul-com.name}"
  region                            = "eu-west-2"
  route_table_private-eu-west-2a_id = "${aws_route_table.private-eu-west-2a-kubernetes-zhazgul-com.id}"
  route_table_private-eu-west-2b_id = "${aws_route_table.private-eu-west-2b-kubernetes-zhazgul-com.id}"
  route_table_private-eu-west-2c_id = "${aws_route_table.private-eu-west-2c-kubernetes-zhazgul-com.id}"
  route_table_public_id             = "${aws_route_table.kubernetes-zhazgul-com.id}"
  subnet_eu-west-2a_id              = "${aws_subnet.eu-west-2a-kubernetes-zhazgul-com.id}"
  subnet_eu-west-2b_id              = "${aws_subnet.eu-west-2b-kubernetes-zhazgul-com.id}"
  subnet_eu-west-2c_id              = "${aws_subnet.eu-west-2c-kubernetes-zhazgul-com.id}"
  subnet_utility-eu-west-2a_id      = "${aws_subnet.utility-eu-west-2a-kubernetes-zhazgul-com.id}"
  subnet_utility-eu-west-2b_id      = "${aws_subnet.utility-eu-west-2b-kubernetes-zhazgul-com.id}"
  subnet_utility-eu-west-2c_id      = "${aws_subnet.utility-eu-west-2c-kubernetes-zhazgul-com.id}"
  vpc_cidr_block                    = "${aws_vpc.kubernetes-zhazgul-com.cidr_block}"
  vpc_id                            = "${aws_vpc.kubernetes-zhazgul-com.id}"
}

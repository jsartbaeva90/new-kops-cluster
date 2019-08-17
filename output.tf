
output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-kubernetes-zhazgul-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-kubernetes-zhazgul-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-kubernetes-zhazgul-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-kubernetes-zhazgul-com.name}"
}

output "cluster_name" {
  value = "kubernetes-zhazgul.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-2a-masters-kubernetes-zhazgul-com.id}", "${aws_autoscaling_group.master-eu-west-2b-masters-kubernetes-zhazgul-com.id}", "${aws_autoscaling_group.master-eu-west-2c-masters-kubernetes-zhazgul-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-kubernetes-zhazgul-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-kubernetes-zhazgul-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-kubernetes-zhazgul-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-kubernetes-zhazgul-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-kubernetes-zhazgul-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-2a-kubernetes-zhazgul-com.id}", "${aws_subnet.eu-west-2b-kubernetes-zhazgul-com.id}", "${aws_subnet.eu-west-2c-kubernetes-zhazgul-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-kubernetes-zhazgul-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-kubernetes-zhazgul-com.name}"
}

output "region" {
  value = "eu-west-2"
}

output "route_table_private-eu-west-2a_id" {
  value = "${aws_route_table.private-eu-west-2a-kubernetes-zhazgul-com.id}"
}

output "route_table_private-eu-west-2b_id" {
  value = "${aws_route_table.private-eu-west-2b-kubernetes-zhazgul-com.id}"
}

output "route_table_private-eu-west-2c_id" {
  value = "${aws_route_table.private-eu-west-2c-kubernetes-zhazgul-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.kubernetes-zhazgul-com.id}"
}

output "subnet_eu-west-2a_id" {
  value = "${aws_subnet.eu-west-2a-kubernetes-zhazgul-com.id}"
}

output "subnet_eu-west-2b_id" {
  value = "${aws_subnet.eu-west-2b-kubernetes-zhazgul-com.id}"
}

output "subnet_eu-west-2c_id" {
  value = "${aws_subnet.eu-west-2c-kubernetes-zhazgul-com.id}"
}

output "subnet_utility-eu-west-2a_id" {
  value = "${aws_subnet.utility-eu-west-2a-kubernetes-zhazgul-com.id}"
}

output "subnet_utility-eu-west-2b_id" {
  value = "${aws_subnet.utility-eu-west-2b-kubernetes-zhazgul-com.id}"
}

output "subnet_utility-eu-west-2c_id" {
  value = "${aws_subnet.utility-eu-west-2c-kubernetes-zhazgul-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.kubernetes-zhazgul-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.kubernetes-zhazgul-com.id}"
}


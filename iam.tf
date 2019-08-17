
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


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

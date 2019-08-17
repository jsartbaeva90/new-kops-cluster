
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

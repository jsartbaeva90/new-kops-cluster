
resource "aws_key_pair" "kubernetes-kubernetes-zhazgul-com-25a71ebf0bc5fe878f802b99169138ea" {
  key_name   = "kubernetes.kubernetes-zhazgul.com-25:a7:1e:bf:0b:c5:fe:87:8f:80:2b:99:16:91:38:ea"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetes-zhazgul.com-25a71ebf0bc5fe878f802b99169138ea_public_key")}"
}

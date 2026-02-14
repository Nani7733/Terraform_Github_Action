resource "aws_eip" "demo-eip" {
  instance   = aws_instance.web.id
  domain     = "vpc"
  depends_on = [aws_internet_gateway.igw]
}
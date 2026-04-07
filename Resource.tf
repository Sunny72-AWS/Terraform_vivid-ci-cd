resource "aws_instance" "web" {
    ami = "ami-090ef0fd6549bfb96"
    instance_type = "t3.micro"

    tags = {
        Name = "github-actions-instance"
    }
}
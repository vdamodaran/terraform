resource "aws_instance" "terraform_wapp" {
    ami = ""
    instance_type = "t2.micro"
    vpc_security_group_ids =  [ "" ]
    subnet_id = ""
    key_name               = "terraform-demo"
    count         = 1
    associate_public_ip_address = true
    tags {
      Name              = ""
      Environment       = ""
      Project           = ""
    }
}
#testing 
output "instance_id_list"     { value = ["${aws_instance.terraform_wapp.*.id}"] }

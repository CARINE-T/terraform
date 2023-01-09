resource "aws_instance" "my-machine" {
   count = 2   # Here we are creating identical 4 machines. 
   ami = var.ami
   instance_type = var.instance_type
   tags = {
      Name = "my-machine-${count.index}"
           }
}

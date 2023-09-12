resource "aws_instance" "key" {
ami = var.ami_id
instance_type = var.itype
key_name = var.kn
count = 1
vpc_security_group_ids = [aws_security_group.TASK-SG.id]
tags = {
Name = var.iname
Environment = "dev"
}
root_block_device {
volume_size = 12
}
}


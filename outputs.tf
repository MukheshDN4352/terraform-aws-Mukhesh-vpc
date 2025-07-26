#vpc 
output "vpc_id" {
    value = aws_vpc.main.id
     description = "Get the vpc ID"
  
}

locals {
  #To format the subnet IDs which may be multiples in format of subnet_name ={id=, az=}
  public_subnet_output={
    for key,config in local.public_subnet : key =>{
        subnet_id =aws_subnet.main[key].id
        az=aws_subnet.main[key].availability_zone
    }
  }

    private_subnet_output={
    for key,config in local.private_subnet : key =>{
        subnet_id =aws_subnet.main[key].id
        az=aws_subnet.main[key].availability_zone
    }
  }
 
}

output "public_subnets" {
   description = "Get the all the public subnets ID's"
    value = local.public_subnet_output
}

output "private_subnets" {
  description = "Get the all the private subnets ID's"
    value = local.private_subnet_output
}
output "vpc"{
  description = "Get the vpc ID"
  value=module.vpc.vpc_id
}


output "public_subnets"{
  description = "Get the all the public subnets ID's"
  value=module.vpc.public_subnets
}

output "private_subnets" {
  description = "Get the all the private subnets ID's"
    value = module.vpc.private_subnets
  
}
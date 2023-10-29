module "vpc_vpc-03622508ccabb8719" {
  source               = "./modules/vpc"
  vpc_cidr             = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

module "vpc_vpc-040873ce6d24dfd97" {
  source               = "./modules/vpc"
  vpc_cidr             = "10.222.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Name"        = "dev_cgp_vpc"
    "Project"     = "CGP"
    "Region"      = "us-east-1"
    "Environment" = "Dev"
  }
}

module "subnet_subnet-0644cb7c5481a6d9e" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.64.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1f"
}

module "subnet_subnet-0c91b0a51ebaa32a8" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1c"
  tags = {
    "Name"        = "public_us-east-1c_dev_cgp"
    "Project"     = "CGP"
    "Region"      = "us-east-1"
    "Environment" = "Dev"
  }
}

module "subnet_subnet-0d2fa7f51fa90f14e" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1b"
  tags = {
    "Region"      = "us-east-1"
    "Environment" = "Dev"
    "Name"        = "public_us-east-1b_dev_cgp"
    "Project"     = "CGP"
  }
}

module "subnet_subnet-09c8b90127885ddfe" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.80.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1d"
}

module "subnet_subnet-0e4ecbe4a83269b14" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1a"
  tags = {
    "Project"     = "CGP"
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Name"        = "public_us-east-1a_dev_cgp"
  }
}

module "subnet_subnet-0ca9c430f6e141541" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.0.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1c"
}

module "subnet_subnet-0d815edf215e9a361" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.128.0/18"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1b"
  tags = {
    "Region"      = "us-east-1"
    "Name"        = "private_us-east-1b_dev_cgp"
    "Project"     = "CGP"
    "Environment" = "Dev"
  }
}

module "subnet_subnet-00dfe8b6613073e0d" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.48.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1e"
}

module "subnet_subnet-088087f4cff88ba14" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.16.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1a"
}

module "subnet_subnet-0182aa467d8e9fdc4" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.64.0/18"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1a"
  tags = {
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Project"     = "CGP"
    "Name"        = "private_us-east-1a_dev_cgp"
  }
}

module "subnet_subnet-0b2b80444dc19cf85" {
  source                  = "./modules/subnet"
  cidr_block              = "172.31.32.0/20"
  map_public_ip_on_launch = true
  vpc_id                  = module.vpc_vpc-03622508ccabb8719.id
  az                      = "us-east-1b"
}

module "subnet_subnet-05f5e4f214a79b646" {
  source                  = "./modules/subnet"
  cidr_block              = "10.222.192.0/18"
  map_public_ip_on_launch = false
  vpc_id                  = module.vpc_vpc-040873ce6d24dfd97.id
  az                      = "us-east-1c"
  tags = {
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Project"     = "CGP"
    "Name"        = "private_us-east-1c_dev_cgp"
  }
}

module "nat_gateway_nat-01b8ab26778951cf4" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_subnet-0c91b0a51ebaa32a8.id
  tags = {
    "Project"     = "CGP"
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Name"        = "dev_cgp_us-east_1c_nat_gw"
  }
}

module "nat_gateway_nat-01f77ad992a4c0171" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_subnet-0e4ecbe4a83269b14.id
  tags = {
    "Project"     = "CGP"
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Name"        = "dev_cgp_us-east_1a_nat_gw"
  }
}

module "nat_gateway_nat-0e41a84966e44b062" {
  source    = "./modules/nat_gateway"
  subnet_id = module.subnet_subnet-0d2fa7f51fa90f14e.id
  tags = {
    "Project"     = "CGP"
    "Environment" = "Dev"
    "Region"      = "us-east-1"
    "Name"        = "dev_cgp_us-east_1b_nat_gw"
  }
}

module "internet_gateway_igw-04d860a3cfd672f23" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags = {
    "Region"      = "us-east-1"
    "Environment" = "Dev"
    "Name"        = "dev_cgp_igw"
    "Project"     = "CGP"
  }
}

module "internet_gateway_igw-0c9701fee0c8f47a8" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc_vpc-03622508ccabb8719.id
}

module "route_table_rtb-0f6ca3beb1533a60d" {
  source = "./modules/route_table"
  routes = [
    {
      "destinationCidrBlock"   = "10.220.0.0/16"
      "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
    },
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "natGatewayId"         = "nat-01b8ab26778951cf4"
    }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags = {
    "Region"      = "us-east-1"
    "Environment" = "Dev"
    "Name"        = "dev_cgp_us-east-1c_private_rt"
    "Project"     = "CGP"
  }
}

module "route_table_rtb-0be60bded8a0c01bb" {
  source = "./modules/route_table"
  routes = [
    {
      "destinationCidrBlock"   = "10.220.0.0/16"
      "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
    },
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "natGatewayId"         = "nat-0e41a84966e44b062"
    }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags = {
    "Environment" = "Dev"
    "Project"     = "CGP"
    "Name"        = "dev_cgp_us-east-1b_private_rt"
    "Region"      = "us-east-1"
  }
}

module "route_table_rtb-0e5fcbe7ecd2ca2a7" {
  source = "./modules/route_table"
  routes = [
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "gatewayId"            = "igw-0c9701fee0c8f47a8"
    }
  ]
  vpc_id = module.vpc_vpc-03622508ccabb8719.id
}

module "route_table_rtb-06c4a26d3327b6ec0" {
  source = "./modules/route_table"
  routes = [
    {
      "destinationCidrBlock"   = "10.220.0.0/16"
      "vpcPeeringConnectionId" = "pcx-07ae88bafc43ea60e"
    },
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "natGatewayId"         = "nat-01f77ad992a4c0171"
    }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags = {
    "Name"        = "dev_cgp_us-east-1a_private_rt"
    "Region"      = "us-east-1"
    "Environment" = "Dev"
    "Project"     = "CGP"
  }
}

module "route_table_rtb-0e48de685c3c4ac83" {
  source = "./modules/route_table"
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
}

module "route_table_rtb-0ea77514b722cf99c" {
  source = "./modules/route_table"
  routes = [
    {
      "destinationCidrBlock" = "0.0.0.0/0"
      "gatewayId"            = "igw-04d860a3cfd672f23"
    }
  ]
  vpc_id = module.vpc_vpc-040873ce6d24dfd97.id
  tags = {
    "Region"      = "us-east-1"
    "Environment" = "Dev"
    "Project"     = "CGP"
    "Name"        = "dev_cgp_public_rt"
  }
}

module "route_table_association_rtb-0f6ca3beb1533a60d" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_subnet-05f5e4f214a79b646.id
  }
  route_table_id = module.route_table_rtb-0f6ca3beb1533a60d.route_table_id
}

module "route_table_association_rtb-0be60bded8a0c01bb" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_subnet-0d815edf215e9a361.id
  }
  route_table_id = module.route_table_rtb-0be60bded8a0c01bb.route_table_id
}

module "route_table_association_rtb-06c4a26d3327b6ec0" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_subnet-0182aa467d8e9fdc4.id
  }
  route_table_id = module.route_table_rtb-06c4a26d3327b6ec0.route_table_id
}

module "route_table_association_rtb-0ea77514b722cf99c" {
  source = "./modules/route_table_association"
  subnet_ids = {
    subnet_1 = module.subnet_subnet-0d2fa7f51fa90f14e.id
    subnet_2 = module.subnet_subnet-0e4ecbe4a83269b14.id
    subnet_3 = module.subnet_subnet-0c91b0a51ebaa32a8.id
  }
  route_table_id = module.route_table_rtb-0ea77514b722cf99c.route_table_id
}

module "ecs_cluster" {
  source       = "./modules/ecs-cluster"
  cluster_name = "myapp-cluster"
}


module "ecs_task_definition" {
  source             = "./modules/task-definition"
  task_family        = "testapp-task"
  fargate_cpu        = var.fargate_cpu
  fargate_memory     = var.fargate_memory
  app_image          = var.app_image
  app_port           = var.app_port
  task_role_name     = "ecs-task-role"
}


module "ecs_service" {
  source               = "./modules/ecs-service"
  service_name         = "testapp-service"
  cluster_id           = module.ecs_cluster.cluster_id
  ecs_task_definition_arn = module.ecs_task_definition.task_definition_arn
  desired_count        = 2
  subnet_ids           = [module.subnet_subnet-0c91b0a51ebaa32a8.id]
  assign_public_ip     = false
  use_fargate          = false
}

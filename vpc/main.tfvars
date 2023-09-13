prefix                   = "test"
cidr_block               = "10.0.0.0/16"
dhcp_options_domain_name = "test.eu-west-1.zava"

azs             = ["eu-west-1a", "eu-west-1b"]
public_subnets  = ["10.0.0.0/24", "10.0.3.0/24"]
private_subnets = ["10.0.8.0/24", "10.0.2.0/24"]

data "aws_caller_identity" "current" {}

data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["${local.name}-vpc"]
  }
}

data "aws_subnet" "public" {
  count = length(var.azs)

  vpc_id = data.aws_vpc.main.id

  filter {
    name   = "tag:accessible"
    values = ["public"]
  }

  filter {
    name   = "tag:Name"
    values = ["test-public-${var.azs[count.index]}"]
  }
}

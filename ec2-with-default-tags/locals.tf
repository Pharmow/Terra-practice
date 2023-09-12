#create locals block

locals {
  name = "${var.server}-${var.environment}"
  default_tags = {
    Environment = "Dev"
    Dept        = "Finance"
    ManagedBy   = "Front"
  }
}
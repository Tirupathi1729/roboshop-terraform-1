variable "name" {}
variable "instance_type" {
  default = "t2.micro"
}
variable "security_groups" {
  default = ["sg-0cd32fc66a74591e4"]
}
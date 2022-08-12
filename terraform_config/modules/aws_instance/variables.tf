variable "ami_id" {
    type = string
    default = "ami-0729e439b6769d6ab"
}

variable "instance" {
    type = string
    default = "t3.micro"
}

variable "subnet" {
    type = string
    default = ""
}
variable "vpcname" {
  type = string   
  default = "logstash"
}
variable "vpctenancy" {
    type = string
    default = "default"
}
variable "vpccidr" {
  type = string  
  default = "10.0.0.0/16"
}
variable "pub_sub_names" {
  type = list(string)  
  default = ["logstash-pub-sub-01", "logstash-pub-sub-02"]
}
variable "pubcidr" {
  type = list(string)    
  default = ["10.0.0.0/18", "10.0.64.0/18"]
}
variable "pvt_sub_names" {
  type = list(string)    
  default = ["logstash-pvt-sub-01", "logstash-pvt-sub-02"]
}
variable "pvtcidr" {
  type = list(string)    
  default = ["10.0.128.0/18", "10.0.192.0/18"]
}
variable "pub_instance_name" {
  type = string 
  default = "bastion-instance"
}
variable "pvt_instance_name" {
  type = list(string)  
  default = ["logstash-Master","logstash-Slave"]  
}
variable "igwname" {
  type = string   
  default = "logstash-igw-01"
}
variable "natname" {
  type = string   
  default = "logstash-nat-01"
}
variable "public_rt_names" {
  type = string   
  default = "logstash-route-pub-01"
}
variable "private_rt_names" {
  type = string   
  default = "logstash-route-pvt-01"
}
variable "instancetype" {
  type = string   
  default = "t2.micro"
}
variable "seqgrp" {
  type = string   
  default = "logstash"
}
variable "keyname" {
  type = string
  default = "paris-ubuntu.pem"
}

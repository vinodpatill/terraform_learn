provider "aws" {
  region = "us-east-1"
}

  // this is a string variable

  variable "firststring" {
    type = string
    default ="hello my name is vinod"
}

 variable "multilinestring" {
    type = string
    default= <<EOH
    hello my name is vim
    string
    newline
    EOH
}

    output "myfirstoutput" {
     value ="${var.firststring}"
}
 output "multilineoutput" {
     value ="${var.multilinestring}"
}

   //This is my map example

   variable "mapexample" {
    type = map
    default = {
        "useast" = "ami1"
        "uswest" = "ami2"
    }
}

  output "mapoutput" {
     value ="${var.mapexample["uswest"]}"
}

  variable "mysecuritygrouplist" {
    type = list
    default = ["sg1","sg2","sg3"]
}

   output "sgoutput" {
    value = "{${var.mysecuritygrouplist[1]}"
    
}

  variable "testbool" {
  default = false
}

 output "booloutput"{
  value= "${var.testbool}"
 }

 variable "myinputvariable" {
    type = string
 }

 output "myoutputvariable"{
  sensitive = false
  value= "${var.myinputvariable}"
 }   

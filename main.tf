

resource "aws_s3_bucket" "jahanvi-s3" {
  bucket = "my-tf-test-bucket300"

  tags = {
    Name        = "My bucks"
    Environment = "cool"
  }
} 

#--USING COUNT---
resource "aws_s3_bucket" "bucks123" {
  count = 3
  

  bucket = "committed-bucket320-${count.index}"
  
}

#---USING FOR-EACH LOOP----


resource "aws_s3_bucket" "jyoti-buckets" {

  for_each = var.set-implementation-using-for-each
  bucket     = each.value
 
}

variable "set-implementation-using-for-each" {
  type = set(string)
  default = ["jyoti-default1", "jyoti-default2", "jyoti-default3", "jyoti-default4"]
}
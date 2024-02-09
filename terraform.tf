provider "aws" {
  region = "us-east-1"
}

# resource "aws_s3_bucket" "Jahanvi" {
#   bucket = "my-tf-test-bucket3005"

#   tags = {
#     Name        = "My bucks"
#     Environment = "cool"
#   }
# } 

#--USING COUNT---
resource "aws_s3_bucket" "Bucks" {
  count = 3
  

  bucket = "committed-bucket3005-${count.index}"
  
}

# #---USING FOR-EACH LOOP----


# resource "aws_s3_bucket" "jyoti-bucket-1" {

#   for_each = var.num_buckets_for_for-each
#   bucket     = each.value
 
# }

# variable "num_buckets_for_for-each" {
#   type = set(string)
#   default = ["default1", "default2", "default3", "default4"]
# }
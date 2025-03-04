resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "dikshterraweek-demo-state-bucket"
}

resource "aws_dynamodb_table" "my_dynamo_table" {
    name         = "dikterraweek-demo-state-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}



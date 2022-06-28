variable "aws_region" {
  description = "The AWS region to use to create resources."
  default     = "ap-south-1"
}

variable "bucket_name" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
    default     = "my-s3bucket-12345678"
}

variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}

variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}

variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}

variable "tags_name" {
    type = string
    description = "(optional) describe your variable"
    default = "demo"
}

variable "tags_env" {
    type = string
    description = "(optional) describe your variable"
    default = "dev"
}

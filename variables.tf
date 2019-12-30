variable "do_token" {
  type        = string
  description = "Your DigitalOcean API token"
  default     = "digital ocean api token"
}

variable "ssh_fingerprint" {
  type        = string
  description = "Your SSH key fingerprint"
  default     = "md5 fingerprint of your terraform machine"
}

variable "pub_key" {
  type        = string
  description = "The path to your public SSH key"
  default     = "public key path"
}

variable "pvt_key" {
  type        = string
  description = "The path to your private SSH key"
  default     = "private key path"
}

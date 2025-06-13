provider "aws" {
  region     = "eu-central-1"
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
  registry_auth {
    address  = data.aws_ecr_authorization_token.token.proxy_endpoint
    username = data.aws_ecr_authorization_token.token.user_name
    password = data.aws_ecr_authorization_token.token.password
  }
}
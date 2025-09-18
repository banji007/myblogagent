terraform {
  backend "gcs" {
    bucket = "qwiklabs-gcp-03-7abb9709592c-terraform-state"
    prefix = "myblogagent/prod"
  }
}

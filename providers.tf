provider "google" {
  project = "internal-439412"
  region  = "us-central1"
}
terraform {
  backend "gcs" {
    bucket = "k8_bucket"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
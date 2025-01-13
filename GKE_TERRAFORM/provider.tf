terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.12.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    
  }
  backend "gcs" {
    bucket = "terraform-state-xsx"
    prefix = "terraform/state"
  }
  
}

provider "google" {
  project     = "gcp-devops-439413"
  region      = "us-central1"
  zone        = "us-central1-c"
}
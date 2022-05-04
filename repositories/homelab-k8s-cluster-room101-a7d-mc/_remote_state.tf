terraform {
  backend "s3" {
    bucket                      = "github-repo-management"
    force_path_style            = true
    key                         = "homelab-k8s-cluster-room101-a7d-mc.tfstate"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
  }
}


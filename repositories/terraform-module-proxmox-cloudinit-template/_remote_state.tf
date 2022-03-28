terraform {
  backend "s3" {
    bucket                      = "github-repo-management"
    force_path_style            = true
    key                         = "terraform-module-proxmox-cloudinit-template.tfstate"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
  }
}


terraform {
  backend "s3" {
    bucket                      = "github-repo-management"
    force_path_style            = true
    key                         = "action-build-aur-package.tfstate"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
  }
}


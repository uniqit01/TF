terraform {
 backend "s3" {
    bucket                      = "obs-1000035578-terraform-states"
    key                         = "spetrovk-b30027c1-3f50-4d8f-a8fa-73261a6212f4/terraform.tfstate"
    region                      = "eu-de"
    endpoint                    = "obs.eu-de.otc.t-systems.com"
    encrypt                     = false
    skip_credentials_validation = true
    skip_get_ec2_platforms      = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
  }
}

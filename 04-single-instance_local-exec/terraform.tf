terraform {
 backend "s3" {
    bucket                      = "obs-1000035578-terraform-states"
    key                         = "spetrovk-a24e9e2d-510e-4e9d-bbc0-081e9d3c6368/terraform.tfstate"
    region                      = "eu-de"
    endpoint                    = "obs.eu-de.otc.t-systems.com"
    encrypt                     = false
    skip_credentials_validation = true
    #skip_get_ec2_platforms      = true
    skip_region_validation      = true
    #skip_requesting_account_id  = true
    skip_metadata_api_check     = true
  }
}

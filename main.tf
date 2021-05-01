terraform {
  required_providers {
    intersight = {
      source = "ciscodevnet/intersight"
      version = "1.0.7"
    }
  }
}

provider "intersight" {
  apikey    = var.api_key
  secretkey = var.secretkey
  endpoint = "https://intersight.com"
}

data "intersight_iam_role" "device_technician" {
  name = "Device Technician"
}

data "intersight_organization_organization" "org" {
  name = var.organization
}
resource "intersight_ntp_policy" "ntp1" {
  name    = "ntp1"
  enabled = true
  ntp_servers = [
    "ntp.esl.cisco.com",
    "time-a-g.nist.gov",
    "time-b-g.nist.gov"
  ]
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.org.results[0].moid
  }
}

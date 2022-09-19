#Get the Organization Moid by Organization Name
data "intersight_organization_organization" "this" {
  name = var.organization_name
}

# NTP Policy details
resource "intersight_ntp_policy" "this" {
  name        = "${var.organization_name}-ntp-policy"
  description = var.description
  enabled     = var.enabled
  ntp_servers = var.ntp_servers
  organization {
    object_type = var.object_type
    moid        = data.intersight_organization_organization.this.results[0].moid 
  }
}


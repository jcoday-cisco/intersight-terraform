output "organization_moid" {
  value = data.intersight_organization_organization.this.results[0].moid
}

output "ntp_policy" {
  value = intersight_ntp_policy.this
}
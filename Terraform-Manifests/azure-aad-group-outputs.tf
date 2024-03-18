output "aad_object_id" {
  description = "Object ID of the Azure AD group"
  value = azuread_group.aks_administrator_group.object_id
}

output "aad_members" {
  description = "Members of the group"
  value = azuread_group.aks_administrator_group.members
}


locals {
  /**
   * This module defines the local variables used in the resource group module.
   *
   * resource_group_name: The name of the resource group. It is constructed using the `mandant_prefix_m` variable.
   * merged_tags: A merged map of tags that includes `common_tags`, `environment_tag`, and `mandant_prefix_m` tags.
   */
  resource_group_name = "rg-mvd-${var.mandant_prefix_m}-ch-001"
  merged_tags         = merge(var.common_tags, { "environment_tag" = var.environment_tag }, { "Cost_Center_tag" = var.mandant_prefix_m })
}

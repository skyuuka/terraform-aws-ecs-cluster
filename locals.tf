locals {
  project                       = lookup(var.tag_map, "Project", "Unknown")
  environment                   = lookup(var.tag_map, "Environment", "Unknown")
  cluster_name                  = "ecs${title(local.environment)}Cluster"
  autoscaling_group_name        = "asg${title(local.environment)}ContainerInstance"
  security_group_name           = "sgContainerInstance"
  ecs_for_ec2_service_role_name = "${local.environment}ContainerInstanceProfile"
  ecs_service_role_name         = "ecs${title(local.environment)}ServiceRole"
}

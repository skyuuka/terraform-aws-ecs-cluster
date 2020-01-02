locals {
  project                       = lookup(var.sg_tag_map, "Project", "Unknown")
  environment                   = lookup(var.sg_tag_map, "Environment", "Unknown")
  cluster_name                  = "ecs${title(local.environment)}Cluster"
  autoscaling_group_name        = "asg${title(local.environment)}ContainerInstance"
  ecs_for_ec2_service_role_name = "${local.environment}ContainerInstanceProfile"
  ecs_service_role_name         = "ecs${title(local.environment)}ServiceRole"
}

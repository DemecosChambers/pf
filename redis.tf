
resource "aws_elasticache_cluster" "catalog-airflow-staging-broker" {
  cluster_id           = "catalog-airflow-staging-broker"
  engine               = "redis"
  node_type            = "cache.t3.medium"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis6.x"
  engine_version       = "6.2.5"
  port                 = 6379
}
  tags = {
    Service = "potluck"
  }
}

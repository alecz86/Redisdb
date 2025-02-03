resource "aws_elasticache_cluster" "redis_db" {
  cluster_id           = "redis-db"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.1"
  port                 = 6379
  tags = {
    Name = "DevOps October2024"
  }
}
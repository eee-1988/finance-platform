resource "aws_eks_cluster" "finance_cluster" {
  name     = "finance-eks"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

resource "aws_eks_node_group" "finance_nodes" {
  cluster_name    = aws_eks_cluster.finance_cluster.name
  node_group_name = "finance-nodes"

  instance_types = ["t3.small"]

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 3
  }
}
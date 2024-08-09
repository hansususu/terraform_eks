provider "aws" {
    region = "ap-northeast-2"
}

module "eks-vpc" {
    source = "./VPC"
}

module "pri-cluster" {
    source = "./EKS"
    eks-vpc-id = module.eks-vpc.eks-vpc-id
    pri-sub1-id = module.eks-vpc.pri-sub1-id
    pri-sub2-id = module.eks-vpc.pri-sub2-id
    pub-sub1-id = module.eks-vpc.pub-sub1-id
    pub-sub2-id = module.eks-vpc.pub-sub2-id
}
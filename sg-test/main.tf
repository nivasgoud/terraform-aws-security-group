module "roboshop_sg" {
    source = "../../TERRAFORM-AWS-SECURITY-GROUP"
    sg_name = "${var.ProjectName}-${var.Environment}-${var.sg_name}"
    sg_description = var.description
    vpc_id = data.aws_vpc.default.id
    sg_ingress_rules = var.sg_ingress_rules
    ProjectName = var.ProjectName
    Environment = var.Environment
}
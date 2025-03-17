# AWS-EKS deployment
## Introduction: 
This repository can provision eks cluster with terraform and required terraform config file is present.   
It can run ind install ELK stack on EKS.   
It can provision GitHub actions runner scaleset as well well.


   
- To get the eks credentials use:
```bash
aws eks update-kubeconfig --name <cluster-name> --region <region>

e.g.

aws eks update-kubeconfig --name eks-prod --region us-east-1 
```
## Updates required before you use or run the workflows.
- Update in ``.github/workflows`` every yaml workflow has ``env`` so change as per your.
- Update the eks setting in ``tf-aws-eks`` 
  - Update ``terraform.tfvars`` based on your requirements.
  - Update ``backend.tf`` to change to your S3 as backend.
- Update ``manifest/svc-kibana.yaml`` for your public subnet.

```bash
├── README.md
├── .github/
│   └── workflows/
│       └── (yaml workflow files)
├── tf-aws-eks/
│   ├── terraform.tfvars
│   ├── backend.tf
│   └── (other terraform configuration files)
└── manifest/
    └── svc-kibana.yaml
    └── (other Kubernetes manifest files)
```
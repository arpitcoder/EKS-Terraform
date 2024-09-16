# EKS-Terraform
# EKS Deployment Automation Tool
This project provides a hassle-free solution for deploying Amazon Elastic Kubernetes Service (EKS) clusters, automating the process of git checkout, building code, creating Docker images, pushing them to a registry, and deploying to the EKS cluster. The tool simplifies the infrastructure setup and deployment pipeline, making it easier for developers and DevOps teams to focus on application development and scaling.

# Features
`Automated EKS Cluster Setup:` Deploys and configures an EKS cluster on AWS with minimal manual steps.
`Continuous Integration/Deployment:` Automatically checks out code from Git, builds Docker images, and pushes them to a container registry (e.g., ECR, Docker Hub).
`Kubernetes Deployment:` Seamlessly deploy your Docker images to the EKS cluster.
`Customizable Deployment:` Supports custom deployment configurations using Kubernetes YAML files.
Scalable: Designed for production-grade EKS clusters with high availability and scalability.
# Prerequisites
Before you begin, ensure you have the following:
`Ensure your AWS credentials are properly configured either via ~/.aws/credentials or environment variables.`
`export AWS_ACCESS_KEY_ID="your-access-key"`
`export AWS_SECRET_ACCESS_KEY="your-secret-key"`
`AWS CLI:` Set up the AWS CLI with the required permissions to manage EKS.
`kubectl:` Install and configure kubectl to interact with your Kubernetes clusters.
`Docker:` Docker installed to build and manage container images.
`Terraform (optional):` Use Terraform to automate EKS cluster provisioning.
`Python or Node.js:` For the backend services, which handle the automation tasks.
`AWS IAM Permissions:` Sufficient AWS IAM permissions to create and manage EKS, EC2, VPC, and other related services.

# Installation

Clone the Repository:

`git clone <repo-url>`
`cd eks-deployment-tool`

# Install Dependencies:

Python:

`pip install -r requirements.txt`
Node.js:
`npm install`

# Set Up AWS Credentials: Ensure you have your AWS CLI configured with appropriate credentials.

`aws configure`

# Configure Kubernetes: Install and configure kubectl to access the EKS cluster.

`aws eks update-kubeconfig --name <cluster-name> --region <aws-region>`

# Provision EKS Cluster:

If you're using Terraform to provision the EKS cluster, run:

`cd EKS-TERRAFORM`
`terragrunt init`
`terragrunt apply`
Trigger Build and Deploy Pipeline:
From the Web UI:
Provide the Git repository URL, branch name, Docker image tag, and other necessary details.
Click "Start Deployment" to trigger the pipeline.
# From the Command Line:

`python deploy.py --repo <repo-url> --branch <branch> --image <image-name> --tag <tag>`

Monitor Deployment:

View the logs and monitor the status of the deployment from the web UI.

# Environment Variables

The application requires the following environment variables to be set:

`AWS_ACCESS_KEY_ID`: Your AWS access key.  
`AWS_SECRET_ACCESS_KEY`: Your AWS secret key.  
`AWS_DEFAULT_REGION`: The AWS region for the EKS cluster.  
`DOCKER_REGISTRY_URL`: The URL of your Docker registry (e.g., ECR, Docker Hub).  
`KUBE_CONFIG_PATH`: The path to the kubeconfig file to interact with your Kubernetes cluster.

# Example Workflow
`Git Checkout:` The application checks out the latest code from the specified Git branch.
`Build:` Builds the source code and creates a Docker image using the provided Dockerfile.
`Push to Registry:` Tags and pushes the Docker image to the configured container registry.
`Deploy to EKS:` Deploys the Docker image to the EKS cluster using kubectl and a Kubernetes deployment YAML file.
# Configuration
`Dockerfile:` Ensure your project has a valid Dockerfile for building the application.
`Kubernetes YAML:` Customize the Kubernetes deployment YAML file located in k8s/deployment.yaml.
Troubleshooting
`AWS Permissions Error:` Ensure your IAM user/role has sufficient permissions to manage EKS and other AWS resources.
`Docker Build Issues:` Verify that the Dockerfile in your repository is valid and can successfully build the image locally.
`Kubernetes Deployment Issues:` Check the status of your deployment by running:

`kubectl get pods`
`kubectl logs <pod-name>`

# Contributing
Contributions are welcome! Please submit pull requests or open issues for any features or bugs.

# License
This project is licensed under the MIT License.


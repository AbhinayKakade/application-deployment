# Application Deployment

This document outlines the process of creating an Amazon Elastic Kubernetes Service (EKS) cluster using Terraform and deploying both frontend and backend applications on Amazon EKS using a GitHub Actions CI/CD pipeline. The deployed applications are connected to a load balancer to expose them to the internet.

## Table of Contents
- [Pre-requisites](#pre-requisites)
- [Pre-understanding of GitHub Repo Branch Structure](#pre-understanding-of-github-repo-branch-structure)
- [Create Infrastructure Using Terraform](#create-infrastructure-using-terraform)
- [Deploying Application in EKS Using GitHub Actions](#deploying-application-in-eks-using-github-actions)
- [Usage](#usage)
- [Features](#features)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)

## 1. Pre-requisites
Before proceeding, ensure the following requirements are met:
- AWS account with appropriate permissions to manage EKS and other AWS resources.
- Terraform installed on your local machine.
- Git and GitHub CLI tools installed.
- Docker installed for containerizing applications.
- Basic understanding of CI/CD pipelines and Kubernetes.

## 2. Pre-understanding of GitHub Repo Branch Structure

The GitHub repository has three primary branches used for deployment:

- **Frontend CI/CD**: Contains the configuration and scripts necessary for deploying the frontend application.
- **Backend CI/CD**: Contains the configuration and scripts necessary for deploying the backend application.
- **Dev**: The development branch where developers push their changes.
  
![image](https://github.com/user-attachments/assets/4e8b8b8e-2df9-4ef3-ba07-4380cb0de25d)

### Branch Workflow:
1. Developers push code to the `Dev` branch for initial development and testing.
2. From the `Dev` branch, code is merged into either the `Frontend CI/CD` or the `Backend CI/CD` branch based on the respective application components.
3. Merging code to these branches (`Frontend CI/CD` or `Backend CI/CD`) triggers a GitHub Actions pipeline that:
   - Builds the application.
   - Runs tests.
   - Deploys the application to Amazon EKS.
     
![image](https://github.com/user-attachments/assets/1256d9d4-1047-4f35-9925-05c218fdb809)

This workflow ensures a streamlined and efficient CI/CD process for both frontend and backend applications.

## 3. Create Infrastructure Using Terraform

### Steps:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/AbhinayKakade/application-deployment.git
   ```

2. **Navigate to the Terraform Directory:**
   ```bash
   cd application-deployment/terraform/env/prod
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Review the Terraform Plan:**
   ```bash
   terraform plan
   ```

5. **Apply the Terraform Configuration:**
   ```bash
   terraform apply
   ```
   Confirm the action by typing `yes` when prompted. This will provision the EKS cluster and related infrastructure.

## 4. Deploying Application in EKS Using GitHub Actions

### Steps:

1. **Update Code:** Make the necessary changes to the application code in the local development environment.

2. **Push Changes to the Dev Branch:**
   ```bash
   git add .
   git commit -m "Update application code"
   git push origin dev
   ```

3. **Create a Pull Request:** Open a pull request from the `Dev` branch to the appropriate branch (`Frontend CI/CD` or `Backend CI/CD`).
   
![image](https://github.com/user-attachments/assets/7e67b29c-0c4b-4ace-826d-5b08d5b285a6)

5. **Merge the Pull Request:** Once the pull request is reviewed and approved, merge it into the target branch (`Frontend CI/CD` or `Backend CI/CD`).

7. **Automated Deployment:** The GitHub Actions pipeline is triggered automatically and will:
   - Build the application.
   - Run tests.
   - Deploy the application to the EKS cluster.
     
![image](https://github.com/user-attachments/assets/e0efce5d-6168-43ab-b30c-1cc2745de72a)

6. **Application Exposure:** The application is exposed to the internet via a load balancer as part of the deployment process.
   
![image](https://github.com/user-attachments/assets/77b9191f-76db-4182-ad08-6dc6540861dd)

## 5. Usage

### Accessing the Application:
The application can be accessed using the URL provided by the load balancer.

1. Frount End : http://k8s-prod-frontend-b4e3d3d7fe-a7abafa4115715a5.elb.us-east-1.amazonaws.com/
   
![image](https://github.com/user-attachments/assets/ad1aafd0-249d-4cf5-92dd-3584d082ec1a)

3. Back End   : http://k8s-prod-backends-6fb62ea902-86ce12fa3d7f2394.elb.us-east-1.amazonaws.com/
   
![image](https://github.com/user-attachments/assets/34a64abd-9d89-4d8d-bb9e-0b4022d638dd)
 
### Testing:
Ensure that the frontend and backend endpoints are reachable and functional.

## 6. Features

- Automated CI/CD pipelines using GitHub Actions.
  
![image](https://github.com/user-attachments/assets/d67ae571-31f6-40ae-b2a2-03de8877c7c9)

- Scalable application deployment on Amazon EKS.
  
![image](https://github.com/user-attachments/assets/e8dd2fc9-6ce5-409f-8e39-e13caea4cd76)

- Infrastructure provisioning with Terraform.
  
![image](https://github.com/user-attachments/assets/27df7485-9f99-412f-857f-df8d3b463361)

- Secure and efficient application exposure using a load balancer.
  
![image](https://github.com/user-attachments/assets/83cfc12d-95cf-4596-9f9a-1a3e3cdb32a9)

## 7. Troubleshooting

### Common Issues:

1. **Deployment pipeline fails:**
   - **Solution:** Check the GitHub Actions logs for errors and fix the configuration or code issues.
     
![image](https://github.com/user-attachments/assets/29711946-00b2-49b7-b97b-348ef851741e)

2. **Application not accessible:**
   - **Solution:** Verify the load balancer configuration and security group settings.
   
![image](https://github.com/user-attachments/assets/6535c92a-d27d-4ff4-a63e-21c4dbb15351)
  
## 8. Contributing

Contributions are welcome! Please open an issue or submit a pull request for review.

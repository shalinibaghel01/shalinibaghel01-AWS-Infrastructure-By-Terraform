# 🚀 Terraform AWS Infrastructure Deployment

This project uses **Terraform** to provision a simple and scalable infrastructure on **Amazon Web Services (AWS)**. It automates the creation of a Virtual Private Cloud (VPC), public subnet, internet gateway, route table, security group, and a web server running Apache HTTPD.

---

## 🧱 Components Created

- **VPC**
- **Public Subnet**
- **Internet Gateway**
- **Route Table & Route Association**
- **Security Group** (Allowing HTTP)
- **EC2 Instance** with Apache Web Server

---

## 📂 Project Structure

├── main.tf # Terraform provider configuration
├── network.tf # VPC, Subnet, Internet Gateway, Route Table
├── sg.tf # Security Group rules
├── webserver.tf # EC2 Instance with Apache boot script
├── variables.tf # Input variables for modularity
├── outputs.tf # Outputs like EC2 Public IP and URL
├── architecture.png # Infrastructure Architecture Diagram
├── README.md # Project Documentation



---

## 🔧 EC2 Boot Script Details

The EC2 instance is launched with a **user data script** that:

- Installs the Apache HTTPD server
- Starts and enables the service
- Creates a custom `index.html` page with a welcome message:  
  **"Welcome to Terraform"** (with simple animation/styling)

---

## 🌐 Access

After deployment, open the following in your browser:

<EC2_PUBLIC_IP>


*(Note: For demo or testing, resources might be destroyed immediately after to save costs.)*


Apache will display the welcome page.

---

## 📸 Architecture Diagram

![Infrastructure Diagram](architecture.png)

---

## 🛠️ How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/shalinibaghel01/terraform-aws-project.git
   cd terraform-aws-project

Initialize Terraform:
terraform init

(Optional) Review Code Validation:
terraform validate

(Optional) Review Plan:
terraform plan

Apply Configuration:
terraform apply
Confirm when prompted with yes.

🧹 To Destroy Resources
terraform destroy

🙋‍♀️ Author
Shalini
DevOps & Cloud Enthusiast ☁️
LinkedIn https://www.linkedin.com/in/shalinibaghel-profile/

💡 Note

This project is created for hands-on learning and portfolio.

You can enhance it by adding a Load Balancer, Auto Scaling, and using remote backend

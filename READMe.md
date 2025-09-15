Deploying a Dedicated MySQL Database Server on Azure VM
📌 Project Overview

This project demonstrates how to deploy and configure a dedicated MySQL database server on an Azure Virtual Machine (VM).
The goal was to make the database accessible remotely while maintaining secure authentication.

🛠️ Tech Stack

Azure (Virtual Machines, Networking, Resource Groups)

Ubuntu 22.04 LTS

MySQL 8

SSH (for secure access)

🚀 Steps Covered

Provisioned Azure VM

Chose Ubuntu 22.04 LTS with B1s size

Configured authentication using SSH public key

Allowed inbound ports: 22 (SSH) and 3306 (MySQL)

Installed MySQL on VM

sudo apt update
sudo apt install mysql-server -y
sudo systemctl start mysql
sudo systemctl enable mysql


Configured MySQL for Remote Access

Updated mysqld.cnf to listen on 0.0.0.0

Allowed port 3306 in Azure NSG (Network Security Group)

Created a Remote User

CREATE USER 'dbadmin'@'%' IDENTIFIED BY 'StrongPassword123!';
GRANT ALL PRIVILEGES ON *.* TO 'dbadmin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;


Tested Remote Connection
From local machine:

mysql -h <public-ip> -u dbadmin -p


✅ Successfully connected to the MySQL server remotely.

📂 Project Structure
mysql-on-azure/
├── README.md           # Project overview
├── setup-steps.md      # Detailed setup commands
├── sql/
│   └── sample.sql      # Sample SQL queries
└── images/             # Screenshots of steps (optional)

🌍 Use Case

Running a dedicated database server for cloud apps

Testing remote database connectivity

Practicing cloud infrastructure setup for DevOps & Cloud portfolios

🧑‍💻 Author

Christiana Shedrack

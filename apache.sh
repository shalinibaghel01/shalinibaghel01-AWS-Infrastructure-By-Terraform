<<-EOF
#!/bin/bash
# Install Apache (httpd)
yum update -y
yum install -y httpd

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Create a custom animated index.html
echo "<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
  <style>
    body {
      background-color: #f4f4f4;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      font-family: Arial, sans-serif;
    }
    h1 {
      font-size: 3em;
      color: #2c3e50;
      animation: fadeIn 2s ease-in-out, pulse 1.5s infinite alternate;
    }
    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-20px); }
      to { opacity: 1; transform: translateY(0); }
    }
    @keyframes pulse {
      from { transform: scale(1); }
      to { transform: scale(1.05); }
    }
  </style>
</head>
<body>
  <h1>Welcome to Terraform 🚀</h1>
</body>
</html>" >> /var/www/html/index.html
EOF


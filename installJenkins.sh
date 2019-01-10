sudo yum install java-1.8.0-openjdk.x86_64 -y
cd ~ 
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service
sudo yum install git -y
sudo yum install maven
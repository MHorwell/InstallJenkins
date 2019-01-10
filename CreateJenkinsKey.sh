echo "Enter Jenkins login"
JENKINSLOGIN= read
echo "Enter Spring login"
SPRINGLOGIN= read
$JENKINSLOGIN
sudo su - root
mkdir /var/lib/jenkins/.ssh
ssh-keygen /var/lib/jenkins/.ssh/id_rsa
cd /var/lib/jenkins
chown -R jenkins:jenkins .ssh
chmod 700 .ssh
chmod 600 .ssh/*
PUBLICKEY= cat .ssh/id_rsa.pub
exit
exit
$SPRINGLOGIN
sudo useradd jenkinssudo su - jenkinsmkdir ~/.ssh
sudo su - jenkins
mkdir ~/.ssh
$PUBLICKEY >> authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*

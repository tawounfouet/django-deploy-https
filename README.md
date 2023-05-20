# django-deploy-https

source : https://londonappdeveloper.com/django-docker-deployment-with-https-using-letsencrypt/ 

### Commands

Run new project with docker-compose called app in current directory
-  "--rm" removes the container after running
-  ""sh -c" runs the command in the container
-  "django-admin startproject app ." creates a new project called app in the current directory
```bash
docker-compose run -rm app sh -c "django-admin startproject app ."
```

Run docker-compose up
-  "-d" runs the container in the background
```bash
docker-compose up -d
```

Create a new app in the project
```bash
docker-compose run --rm app sh -c "python manage.py startapp home"
```

Update docker-compose.yml with environment variables
```bash
vim docker-compose.yml
```


### Setup EC2 Instance

Create a new EC2 instance
-  Ubuntu Server 18.04 LTS (HVM), SSD Volume Type
-  t2.micro
-  Enable Auto-assign Public IP


```bash

sudo yum update -y
#sudo amazon-linux-extras install -y docker

# install docker 
sudo yum install docker -y 

# start docker service
sudo systemctl enable docker.service
sudo systemctl start docker.service

# add ec2-user to docker group
sudo usermod -a -G docker ec2-user # give ec2-user permission to run docker commands


# Install Docker Compose
wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Git
sudo yum install -y git

# Check versions of docker and docker-compose
docker --version
docker-compose --version


docker run hello-world # test docker installation
# Clone the project


# generate ssh key to connect to github
ssh-keygen -t ed25519 -C "Github deploy SSH Key"  # generate ssh key   
#ssh-keygen -t rsa -b 4096 -C "


# delete a folder
rm -rf folder_name

# Generate the SSL initial certificates
docker-compose -f docker-compose.deploy.yml run --rm certbot /opt/certify-init.sh
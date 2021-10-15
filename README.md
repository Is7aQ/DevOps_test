# DevOps_test

 # For Task #1: 

To install a kubernetes cluster locally on an ubuntu 18.04 we can use minikube following these steps: 

Step 1: Update system


$ sudo apt-get update

$ sudo apt-get install apt-transport-https

$ sudo apt-get upgrade


Step 2: Install VirtualBox Hypervisor


$ sudo apt install virtualbox virtualbox-ext-pack


Step 3: Download minikube


$ wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

$ chmod +x minikube-linux-amd64

$ sudo mv minikube-linux-amd64 /usr/local/bin/minikube


Confirm version installed

$ minikube version


We need kubectl which is a command line tool used to deploy and manage applications on Kubernetes:

$ curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

Make the kubectl binary executable.

$ chmod +x ./kubectl

Move the binary in to your PATH:

$ sudo mv ./kubectl /usr/local/bin/kubectl

Check version:

$ kubectl version -o json 


Step 5: Starting minikube


$ minikube start


Step 6: Minikube Basic operations

To check cluster status, run:

$ kubectl cluster-info


##########

I used Katacoda sence my linux machine didn't meet the requirments.

##########


We need to containrize the nodejs app so we do the following:

$ git init

$ git clone https://github.com/johnpapa/node-hello

we use the Dockerfile and build an image using:

$ docker build -t test .

to check images:

$ docker images

to connect to the remote hub:

$ docker login 

and use credentials to connect 


we tag the image:

$ docker tag test is7aq/node-hello:latest


we push it to the repo:

$ docker push is7aq/node-hello:latest



=====================================

now we have an image that contains our nodejs app 



To deploy the database stateful set I used mongodb-statefulset.yaml with this command:

$ kubectl apply -f mongodb-statefulset.yaml 

to check:

$ Kubectl get all 



To deploy the a basic nodejs app I used deployment.yaml with this command:

$ kubectl apply -f deployment.yaml

to check:

$ Kubectl get all 

we can check the app service using:

$ minikube service nodejs-app-service


Also we can Curl the service URL to check it, the result should be:

Hello Node!

++++++++++++++++++++++++


 # For Task #2: 

update packeges:

$ sudo apt update

install ansible:

$ sudo apt install -y ansible

Use the playbook:

$ vi playbook.yml

and run the playbook:

$ ansible-playbook playbook.yml





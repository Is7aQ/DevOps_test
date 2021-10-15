# DevOps_test

For Task #1: 

To install a kubernetes cluster locally on an ubuntu 18.04 we can use minikube following these steps: 

Step 1: Update system
Run the following commands to update all system packages to the latest release:

sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get upgrade


Step 2: Install KVM or VirtualBox Hypervisor
install VirtualBox using:
sudo apt install virtualbox virtualbox-ext-pack


Step 3: Download minikube

You need to download the minikube binary. I will put the binary under /usr/local/bin directory since it is inside $PATH.
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube


Confirm version installed
$ minikube version


We need kubectl which is a command line tool used to deploy and manage applications on Kubernetes:
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

Make the kubectl binary executable.
chmod +x ./kubectl
Move the binary in to your PATH:
sudo mv ./kubectl /usr/local/bin/kubectl

Check version:
$ kubectl version -o json 


Step 5: Starting minikube

Now that components are installed, you can start minikube. VM image will be downloaded and configure d for Kubernetes single node cluster.
$ minikube start


Step 6: Minikube Basic operations

To check cluster status, run:
$ kubectl cluster-info


##########
I used Katacoda sence my linux machine didn't meet the requirments.



##########





#delete all pods
kubectl delete all --all --all-namespaces

#Status of different k8s components
kubectl get all
kubectl get nodes | pod | services | replicaset | deployment


#create Deployment
kubectl create deployment name 

#Debugging pod
kubectl logs [pod name]

#Get INteractive Terminal
kubectl exec -it [pod name] -- bin/bash

#Get info abotu pod
kubectl describe pod [pod name]
kubectl describe service [service name]

#Apply a configuration file
kubectl apply -f [file name]


#create base64 encoded secrets 
echo -n 'username' | base64
echo -n 'password' | base64

kubectl get secret


$resourceGroup = "AKSDemo"
$location = 'westus2'
az group create -n $resourceGroup -l $location

$clusterName = "hashAKS"
az aks create -g $resourceGroup -n $clusterName --node-count 1 --generate-ssh-keys

kubectl version --short
az aks install-cli

az aks Get-Credentials -g $resourceGroup -n $clusterName

az group delete -n $resourceGroup --yes --no-wait
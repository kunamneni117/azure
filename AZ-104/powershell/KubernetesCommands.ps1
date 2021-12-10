az group create --name kubernetes --location eastus

az aks create --resource-group kubernetes --name companycluster --node-count 1 --enable-addons monitoring --generate-ssh-keys

az aks get-credentials --resource-group kubernetes --name companycluster

kubectl get nodes

kubectl apply -f app.yml

kubectl apply -f service.yml

kubectl get services
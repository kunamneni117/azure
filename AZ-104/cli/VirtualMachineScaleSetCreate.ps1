az vmss create -n appvmset -g azuredemo --instance-count 1 --image Win2016Datacenter --data-disk-sizes-gb 10 --vnet-name azuredemo-vnet --subnet default --public-ip-per-vm --admin-username demousr

az vmss extension set --publisher "Microsoft.Compute" --version 1.10 --resource-group azuredemo --vmss-name appvmset --settings "appconfig.json" --name CustomScriptExtension
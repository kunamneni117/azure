$resourcegroup="servers-RG"
$server="kunamneni-ubuntu"

az vm extension set -g $resourcegroup --vm-name $server --name customScript --publisher Microsoft.Azure.Extensions --settings customscript.json
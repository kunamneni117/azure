New-AzResourceGroup -Name "webapps-RG" -Location "East US"

az appservice plan create --name kunamneniasp --resource-group "webapps-RG" --sku B1

az webapp create  --name kunamneniwebapp --plan kunamneniasp --resource-group "webapps-RG"
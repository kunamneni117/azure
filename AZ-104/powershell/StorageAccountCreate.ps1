$resourceGroup="servers-RG"
$location="East US"
$storageaccountname="kunamneniadlsgen2"
$sku="Standard_LRS"
$kind-"StorageV2"

New-AzStorageAccount -ResourceGroupName $resourceGroup `
  -Name $storageaccountname `
  -Location $location `
  -SkuName $sku `
  -Kind $kind `
  -EnableHierarchicalNamespace $true
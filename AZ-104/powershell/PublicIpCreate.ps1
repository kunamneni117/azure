$publicip="kunamneni-windows-ip"
$resourcegroup="servers-RG"
$location="East US"

$ipobject = New-AzPublicIpAddress -Name $publicip -ResourceGroupName $resourcegroup -Location $location -Sku "Basic" -AllocationMethod "Static" -IpAddressVersion "IPv4" -Tag @{billing="visual-studio-subscription";use="az-104";category="network"}
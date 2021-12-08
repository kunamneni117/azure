$subnet1name="kunamneni-windows-subnet"
$subnet2name="kunamneni-ubuntu-subnet"

$subnet1object = New-AzVirtualNetworkSubnetConfig -Name $subnet1name -AddressPrefix 10.0.0.0/25
$subnet2object = New-AzVirtualNetworkSubnetConfig -Name $subnet2name -AddressPrefix 10.0.0.128/25

$vnetname = "kunamneni-vnet"
$resourcegroup = "servers-RG"
$location = "East US"
$vnetobject = New-AzVirtualNetwork -Name $vnetname -ResourceGroupName $resourcegroup -Location $location -Subnet $subnet1,$subnet2 -AddressPrefix 10.0.0.0/24 -Tag @{billing="visual-studio-subscription";use="az-104";category="network"}
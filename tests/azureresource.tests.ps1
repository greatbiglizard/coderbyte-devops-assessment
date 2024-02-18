$prodresourcegroup = 'TeknoFire'
$prodresources = Get-AzStaticWebApp -ResourceGroupName $prodresourcegroup

Describe 'Azure Resources'{
    foreach ($prodresource in $prodresources) {

        It "$($prodresource.Location) is westeurope" {
            $prodresource.Location | Should Be 'westeurope'
        }
    }
}

$devtestresourcegroup = 'TeknoFire-devtest'
$devtestresources = Get-AzStaticWebApp -ResourceGroupName $devtestresourcegroup

Describe 'Azure Resources'{
    foreach ($devtestresource in $devtestresources) {

        It "$($devtestresource.Location) is westeurope" {
            $devtestresource.Location | Should Be 'westeurope'
        }
    }
}
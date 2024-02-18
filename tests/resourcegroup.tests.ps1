Describe "Azure Resource Group" {
    Context "It is created" {
        It "Should be provisioned successfully" {
            $rg.ProvisioningState | Should -Be "Succeeded"
        }
        It "Should be named correctly" {
            $rg.ResourceGroupName | Should -Be "TeknoFire"
        }
        It "There should be only 1" {
            $rg.Count | Should -Be "1"
        }
    }
}
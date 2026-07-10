Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.1" {
    It "ISO27001.8.1: Ensure devices without a compliance policy are marked 'not compliant'" {

        $result = Test-MtCisDevicesWithoutCompliancePolicyMarked

        if ($null -ne $result) {
            $result | Should -Be $true -Because "devices without a compliance policy are marked 'not compliant'"
        }
    }
}
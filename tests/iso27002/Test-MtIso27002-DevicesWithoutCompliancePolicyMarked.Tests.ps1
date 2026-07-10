Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.1" {
    It "ISO27002.8.1: Ensure devices without a compliance policy are marked 'not compliant'" {

        $result = Test-MtCisDevicesWithoutCompliancePolicyMarked

        if ($null -ne $result) {
            $result | Should -Be $true -Because "devices without a compliance policy are marked 'not compliant'"
        }
    }
}
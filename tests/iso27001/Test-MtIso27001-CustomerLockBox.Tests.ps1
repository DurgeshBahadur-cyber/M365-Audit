Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.30", "ISO27001:5.31" {
    It "ISO27001.5.30, ISO27001.5.31: Ensure the customer lockbox feature is enabled" {

        $result = Test-MtCisCustomerLockBox

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the customer lockbox feature is enabled."
        }
    }
}
Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.30", "ISO27002:5.31" {
    It "ISO27002.5.30, ISO27002.5.31: Ensure the customer lockbox feature is enabled" {

        $result = Test-MtCisCustomerLockBox

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the customer lockbox feature is enabled."
        }
    }
}
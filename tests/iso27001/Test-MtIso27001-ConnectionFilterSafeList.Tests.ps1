Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.7", "ISO27001:8.20" {
    It "ISO27001.8.7, ISO27001.8.20: Ensure the connection filter safe list is off (Only Checks Default Policy)" {

        $result = Test-MtCisConnectionFilterSafeList

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the connection filter safe list not enabled."
        }
    }
}
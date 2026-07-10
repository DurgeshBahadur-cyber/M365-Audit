Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7", "ISO27002:8.20" {
    It "ISO27002.8.7, ISO27002.8.20: Ensure the connection filter safe list is off (Only Checks Default Policy)" {

        $result = Test-MtCisConnectionFilterSafeList

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the connection filter safe list not enabled."
        }
    }
}
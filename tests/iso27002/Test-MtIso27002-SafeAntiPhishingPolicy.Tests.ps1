Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7" {
    It "ISO27002.8.7: Ensure that an anti-phishing policy has been created (Only Checks Default Policy)" {

        $result = Test-MtCisSafeAntiPhishingPolicy

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the default anti-phishing policy is enabled."
        }
    }
}
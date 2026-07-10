Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.7" {
    It "ISO27001.8.7: Ensure that an anti-phishing policy has been created (Only Checks Default Policy)" {

        $result = Test-MtCisSafeAntiPhishingPolicy

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the default anti-phishing policy is enabled."
        }
    }
}
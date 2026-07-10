Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7" {
    It "ISO27002.8.7: Ensure internal phishing protection for Forms is enabled" {

        $result = Test-MtCisFormsPhishingProtectionEnabled

        if ($null -ne $result) {
            $result | Should -Be $true -Because "Forms phishing protection is enabled."
        }
    }
}
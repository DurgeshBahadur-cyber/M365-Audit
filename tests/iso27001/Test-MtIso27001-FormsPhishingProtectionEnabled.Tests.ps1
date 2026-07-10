Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.7" {
    It "ISO27001.8.7: Ensure internal phishing protection for Forms is enabled" {

        $result = Test-MtCisFormsPhishingProtectionEnabled

        if ($null -ne $result) {
            $result | Should -Be $true -Because "Forms phishing protection is enabled."
        }
    }
}
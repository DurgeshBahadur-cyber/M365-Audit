Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.16", "ISO27002:5.17" {
    It "ISO27002.5.16, ISO27002.5.17: Ensure user consent to apps accessing company data on their behalf is not allowed" {

        $result = Test-MtCisEnsureUserConsentToAppsDisallowed

        if ($null -ne $result) {
            $result | Should -Be $true -Because "user consent to apps accessing company data on their behalf is not allowed."
        }
    }
}
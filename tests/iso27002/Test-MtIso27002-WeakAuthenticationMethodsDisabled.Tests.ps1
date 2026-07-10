Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.17", "ISO27002:8.5" {
    It "ISO27002.5.17, ISO27002.8.5: Ensure weak authentication methods are disabled" {

        $result = Test-MtCisWeakAuthenticationMethodsDisabled

        if ($null -ne $result) {
            $result | Should -Be $true -Because "weak authentication methods are disabled."
        }
    }
}
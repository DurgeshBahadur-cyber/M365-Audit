Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.17", "ISO27001:8.5" {
    It "ISO27001.5.17, ISO27001.8.5: Ensure weak authentication methods are disabled" {

        $result = Test-MtCisWeakAuthenticationMethodsDisabled

        if ($null -ne $result) {
            $result | Should -Be $true -Because "weak authentication methods are disabled."
        }
    }
}
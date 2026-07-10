Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.21" {
    It "ISO27001.5.21: Ensure third party integrated applications are not allowed" {

        $result = Test-MtCisThirdPartyApplicationsDisallowed

        if ($null -ne $result) {
            $result | Should -Be $true -Because "users are not allowed to register third party applications in the tenant."
        }
    }
}
Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.16", "ISO27001:5.17", "ISO27001:5.23" {
    It "ISO27001.5.16, ISO27001.5.17, ISO27001.5.23: Ensure the admin consent workflow is enabled" {

        $result = Test-MtCisAdminConsentWorkflowEnabled

        if ($null -ne $result) {
            $result | Should -Be $true -Because "admin consent workflow is enabled"
        }
    }
}
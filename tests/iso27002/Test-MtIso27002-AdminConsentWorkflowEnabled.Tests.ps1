Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.16", "ISO27002:5.17", "ISO27002:5.23" {
    It "ISO27002.5.16, ISO27002.5.17, ISO27002.5.23: Ensure the admin consent workflow is enabled" {

        $result = Test-MtCisAdminConsentWorkflowEnabled

        if ($null -ne $result) {
            $result | Should -Be $true -Because "admin consent workflow is enabled"
        }
    }
}
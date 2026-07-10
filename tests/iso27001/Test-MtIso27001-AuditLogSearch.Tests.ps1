Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.33", "ISO27001:8.15", "ISO27001:8.16" {
    It "ISO27001.5.33, ISO27001.8.15, ISO27001.8.16: Ensure Microsoft 365 audit log search is Enabled" {

        $result = Test-MtCisAuditLogSearch

        if ($null -ne $result) {
            $result | Should -Be $true -Because "audit log search is enabled."
        }
    }
}
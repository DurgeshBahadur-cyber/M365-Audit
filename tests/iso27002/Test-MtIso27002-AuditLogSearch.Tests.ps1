Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.33", "ISO27002:8.15", "ISO27002:8.16" {
    It "ISO27002.5.33, ISO27002.8.15, ISO27002.8.16: Ensure Microsoft 365 audit log search is Enabled" {

        $result = Test-MtCisAuditLogSearch

        if ($null -ne $result) {
            $result | Should -Be $true -Because "audit log search is enabled."
        }
    }
}
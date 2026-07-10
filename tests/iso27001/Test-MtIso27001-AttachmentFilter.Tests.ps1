Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.7" {
    It "ISO27001.8.7: Ensure the Common Attachment Types Filter is enabled (Only Checks Default Policy)" {

        $result = Test-MtCisAttachmentFilter

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the default malware filter policy has the common attachment file filter is enabled."
        }
    }
}
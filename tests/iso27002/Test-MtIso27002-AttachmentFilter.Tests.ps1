Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7" {
    It "ISO27002.8.7: Ensure the Common Attachment Types Filter is enabled (Only Checks Default Policy)" {

        $result = Test-MtCisAttachmentFilter

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the default malware filter policy has the common attachment file filter is enabled."
        }
    }
}
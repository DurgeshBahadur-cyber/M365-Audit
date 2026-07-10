Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7" {
    It "ISO27002.8.7: Ensure comprehensive attachment filtering is applied" {

        $result = Test-MtCisAttachmentFilterComprehensive

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the default malware filter policy did not have comprehensive attachment filtering applied."
        }
    }
}
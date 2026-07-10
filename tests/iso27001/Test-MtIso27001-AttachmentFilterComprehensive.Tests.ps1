Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.7" {
    It "ISO27001.8.7: Ensure comprehensive attachment filtering is applied" {

        $result = Test-MtCisAttachmentFilterComprehensive

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the default malware filter policy did not have comprehensive attachment filtering applied."
        }
    }
}
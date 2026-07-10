Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7" {
    It "ISO27002.8.7: Ensure Zero-hour auto purge for Microsoft Teams is on (Only Checks ZAP is enabled)" {

        $result = Test-MtCisZAP

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the Zero-hour auto purge (ZAP) is enabled"
        }
    }
}
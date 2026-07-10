Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.20", "ISO27002:8.21" {
    It "ISO27002.8.20, ISO27002.8.21: Ensure that DKIM is enabled for all Exchange Online Domains" {

        $result = Test-MtCisDkim

        if ($null -ne $result) {
            $result | Should -Be $true -Because "DKIM record should exist and be configured."
        }
    }
}
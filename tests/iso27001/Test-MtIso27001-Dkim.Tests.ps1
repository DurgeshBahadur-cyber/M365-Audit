Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.20", "ISO27001:8.21" {
    It "ISO27001.8.20, ISO27001.8.21: Ensure that DKIM is enabled for all Exchange Online Domains" {

        $result = Test-MtCisDkim

        if ($null -ne $result) {
            $result | Should -Be $true -Because "DKIM record should exist and be configured."
        }
    }
}
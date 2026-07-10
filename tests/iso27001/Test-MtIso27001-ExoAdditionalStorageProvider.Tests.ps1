Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14" {
    It "ISO27001.5.14: Ensure additional storage providers are restricted in Outlook on the web" {

        $result = Test-MtCisExoAdditionalStorageProvider

        if ($null -ne $result) {
            $result | Should -Be $true -Because 'AdditionalStorageProvidersAvailable should be False'
        }
    }
}
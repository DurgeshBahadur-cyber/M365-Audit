Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.14" {
    It "ISO27002.5.14: Ensure additional storage providers are restricted in Outlook on the web" {

        $result = Test-MtCisExoAdditionalStorageProvider

        if ($null -ne $result) {
            $result | Should -Be $true -Because 'AdditionalStorageProvidersAvailable should be False'
        }
    }
}
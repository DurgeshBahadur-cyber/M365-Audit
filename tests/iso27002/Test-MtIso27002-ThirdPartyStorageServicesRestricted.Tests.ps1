Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.14" {
    It "ISO27002.5.14: Ensure 'third-party storage services' are restricted in 'Microsoft 365 on the web'" {

        $result = Test-MtCisThirdPartyStorageServicesRestricted

        if ($null -ne $result) {
            $result | Should -Be $true -Because "third-party storage services are restricted."
        }
    }
}
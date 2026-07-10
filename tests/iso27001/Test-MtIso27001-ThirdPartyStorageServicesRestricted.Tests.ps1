Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14" {
    It "ISO27001.5.14: Ensure 'third-party storage services' are restricted in 'Microsoft 365 on the web'" {

        $result = Test-MtCisThirdPartyStorageServicesRestricted

        if ($null -ne $result) {
            $result | Should -Be $true -Because "third-party storage services are restricted."
        }
    }
}
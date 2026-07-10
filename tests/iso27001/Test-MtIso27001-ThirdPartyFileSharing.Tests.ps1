Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14", "ISO27001:5.21" {
    It "ISO27001.5.14, ISO27001.5.21: Ensure external file sharing in Teams is enabled for only approved cloud storage services" -Tag "CIS.M365.8.1.1", "CIS E3 Level 2" {

        $result = Test-MtCisThirdPartyFileSharing

        if ($null -ne $result) {
            $result | Should -Be $true -Because "file sharing with third-party cloud services is disabled."
        }
    }
}
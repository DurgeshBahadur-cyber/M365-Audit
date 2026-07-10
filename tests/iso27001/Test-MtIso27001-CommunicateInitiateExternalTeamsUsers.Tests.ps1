Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14" {
    It "ISO27001.5.14: Ensure external Teams users cannot initiate conversations" -Tag "CIS.M365.8.2.3", "CIS E3 Level 1" {

        $result = Test-MtCisCommunicateInitiateExternalTeamsUsers

        if ($null -ne $result) {
            $result | Should -Be $true -Because "External Teams users cannot initiate conversations."
        }
    }
}
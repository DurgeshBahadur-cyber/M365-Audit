Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.7", "ISO27001:8.23" {
    It "ISO27001.8.7, ISO27001.8.23: Ensure Safe Links for Office Applications is Enabled (Only Checks Priority 0 Policy)" {

        $result = Test-MtCisSafeLink

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the priority 0 safe link policy matches CIS recommendations"
        }
    }
}
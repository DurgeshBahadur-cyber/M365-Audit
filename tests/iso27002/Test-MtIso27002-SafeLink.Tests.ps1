Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7", "ISO27002:8.23" {
    It "ISO27002.8.7, ISO27002.8.23: Ensure Safe Links for Office Applications is Enabled (Only Checks Priority 0 Policy)" {

        $result = Test-MtCisSafeLink

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the priority 0 safe link policy matches CIS recommendations"
        }
    }
}
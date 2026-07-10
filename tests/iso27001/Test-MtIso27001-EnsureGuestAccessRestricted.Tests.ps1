Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14", "ISO27001:5.15" {
    It "ISO27001.5.14, ISO27001.5.15: Ensure that guest user access is restricted" {

        $result = Test-MtCisEnsureGuestAccessRestricted

        if ($null -ne $result) {
            $result | Should -Be $true -Because "guest user access is restricted."
        }
    }
}
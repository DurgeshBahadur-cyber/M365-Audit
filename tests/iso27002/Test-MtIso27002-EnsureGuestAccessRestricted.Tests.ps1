Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.14", "ISO27002:5.15" {
    It "ISO27002.5.14, ISO27002.5.15: Ensure that guest user access is restricted" {

        $result = Test-MtCisEnsureGuestAccessRestricted

        if ($null -ne $result) {
            $result | Should -Be $true -Because "guest user access is restricted."
        }
    }
}
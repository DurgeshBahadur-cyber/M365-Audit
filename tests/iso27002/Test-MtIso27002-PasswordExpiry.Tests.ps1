Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.17" {
    It "ISO27002.5.17: Ensure the 'Password expiration policy' is set to 'Set passwords to never expire (recommended)'" {

        $result = Test-MtCisPasswordExpiry

        if ($null -ne $result) {
            $result | Should -Be $true -Because "passwords are not set to expire"
        }
    }
}
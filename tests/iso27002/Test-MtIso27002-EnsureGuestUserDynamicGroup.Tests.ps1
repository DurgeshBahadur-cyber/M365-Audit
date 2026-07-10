Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.15", "ISO27002:5.18" {
    It "ISO27002.5.15, ISO27002.5.18: Ensure a dynamic group for guest users is created" {

        $result = Test-MtCisEnsureGuestUserDynamicGroup

        if ($null -ne $result) {
            $result | Should -Be $true -Because "a dynamic group for Guest users exists."
        }
    }
}
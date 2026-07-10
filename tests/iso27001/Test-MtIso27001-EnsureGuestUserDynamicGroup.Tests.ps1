Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.15", "ISO27001:5.18" {
    It "ISO27001.5.15, ISO27001.5.18: Ensure a dynamic group for guest users is created" {

        $result = Test-MtCisEnsureGuestUserDynamicGroup

        if ($null -ne $result) {
            $result | Should -Be $true -Because "a dynamic group for Guest users exists."
        }
    }
}
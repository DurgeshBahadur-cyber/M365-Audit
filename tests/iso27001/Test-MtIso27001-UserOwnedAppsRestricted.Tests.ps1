Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.21" {
    It "ISO27001.5.21: Ensure 'User owned apps and services' is restricted" {

        $result = Test-MtCisUserOwnedAppsRestricted

        if ($null -ne $result) {
            $result | Should -Be $true -Because "'User owned apps and services' is restricted."
        }
    }
}
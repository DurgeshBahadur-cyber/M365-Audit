Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.21" {
    It "ISO27002.5.21: Ensure 'User owned apps and services' is restricted" {

        $result = Test-MtCisUserOwnedAppsRestricted

        if ($null -ne $result) {
            $result | Should -Be $true -Because "'User owned apps and services' is restricted."
        }
    }
}
Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.15", "ISO27002:5.16", "ISO27002:8.2" {
    It "ISO27002.5.15, ISO27002.5.16, ISO27002.8.2: Ensure that between two and four global admins are designated" {

        $result = Test-MtCisGlobalAdminCount

        if ($null -ne $result) {
            $result | Should -Be $true -Because "only 2-4 Global Administrators exist"
        }
    }
}
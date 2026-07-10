Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.15", "ISO27001:5.16", "ISO27001:8.2" {
    It "ISO27001.5.15, ISO27001.5.16, ISO27001.8.2: Ensure that between two and four global admins are designated" {

        $result = Test-MtCisGlobalAdminCount

        if ($null -ne $result) {
            $result | Should -Be $true -Because "only 2-4 Global Administrators exist"
        }
    }
}
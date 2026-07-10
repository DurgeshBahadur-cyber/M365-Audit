Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.15", "ISO27002:5.18" {
    It "ISO27002.5.15, ISO27002.5.18: Ensure 'Restrict non-admin users from creating tenants' is set to 'Yes'" {

        $result = Test-MtCisCreateTenantDisallowed

        if ($null -ne $result) {
            $result | Should -Be $true -Because "users are not allowed to register new tenants."
        }
    }
}
Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.15", "ISO27001:5.18" {
    It "ISO27001.5.15, ISO27001.5.18: Ensure 'Restrict non-admin users from creating tenants' is set to 'Yes'" {

        $result = Test-MtCisCreateTenantDisallowed

        if ($null -ne $result) {
            $result | Should -Be $true -Because "users are not allowed to register new tenants."
        }
    }
}
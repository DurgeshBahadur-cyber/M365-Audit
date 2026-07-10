Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14", "ISO27001:5.15", "ISO27001:5.18" {
    It "ISO27001.5.14, ISO27001.5.15, ISO27001.5.18: Ensure guest access to a site or OneDrive will expire automatically" {

        $result = Test-MtCisSpoGuestAccessExpiry

        if ($null -ne $result) {
            $result | Should -Be $true -Because "Guest access to a site or OneDrive will expire automatically"
        }
    }
}
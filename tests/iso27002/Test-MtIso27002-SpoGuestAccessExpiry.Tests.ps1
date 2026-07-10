Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.14", "ISO27002:5.15", "ISO27002:5.18" {
    It "ISO27002.5.14, ISO27002.5.15, ISO27002.5.18: Ensure guest access to a site or OneDrive will expire automatically" {

        $result = Test-MtCisSpoGuestAccessExpiry

        if ($null -ne $result) {
            $result | Should -Be $true -Because "Guest access to a site or OneDrive will expire automatically"
        }
    }
}
Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.14", "ISO27002:5.15" {
    It "ISO27002.5.14, ISO27002.5.15: Ensure the SharePoint default sharing link permission is set" {

        $result = Test-MtCisSpoDefaultSharingLinkPermission

        if ($null -ne $result) {
            $result | Should -Be $true -Because "The SharePoint default sharing link permission is set"
        }
    }
}
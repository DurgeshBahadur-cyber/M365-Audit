Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14", "ISO27001:5.15" {
    It "ISO27001.5.14, ISO27001.5.15: Ensure the SharePoint default sharing link permission is set" {

        $result = Test-MtCisSpoDefaultSharingLinkPermission

        if ($null -ne $result) {
            $result | Should -Be $true -Because "The SharePoint default sharing link permission is set"
        }
    }
}
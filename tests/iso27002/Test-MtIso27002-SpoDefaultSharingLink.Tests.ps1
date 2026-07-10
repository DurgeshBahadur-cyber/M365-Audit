Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.14" {
    It "ISO27002.5.14: Ensure link sharing is restricted in SharePoint and OneDrive" {

        $result = Test-MtCisSpoDefaultSharingLink

        if ($null -ne $result) {
            $result | Should -Be $true -Because "Link sharing is restricted in SharePoint and OneDrive"
        }
    }
}
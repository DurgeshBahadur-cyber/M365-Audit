Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7" {
    It "ISO27002.8.7: Ensure Safe Attachments for SharePoint, OneDrive, and Microsoft Teams is Enabled" {

        $result = Test-MtCisSafeAttachmentsAtpPolicy

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the Safe Attachement policies for SharePoint, OneDrive, and Microsoft Teams are Enabled."
        }
    }
}
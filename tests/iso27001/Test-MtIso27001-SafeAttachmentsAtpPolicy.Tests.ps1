Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.7" {
    It "ISO27001.8.7: Ensure Safe Attachments for SharePoint, OneDrive, and Microsoft Teams is Enabled" {

        $result = Test-MtCisSafeAttachmentsAtpPolicy

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the Safe Attachement policies for SharePoint, OneDrive, and Microsoft Teams are Enabled."
        }
    }
}
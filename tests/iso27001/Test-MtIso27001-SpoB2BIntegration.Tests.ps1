Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14", "ISO27001:5.19" {
    It "ISO27001.5.14, ISO27001.5.19: Ensure SharePoint and OneDrive integration with Azure AD B2B is enabled" {

        $result = Test-MtCisSpoB2BIntegration

        if ($null -ne $result) {
            $result | Should -Be $true -Because "SharePoint and OneDrive integration with Azure AD B2B is enabled"
        }
    }
}
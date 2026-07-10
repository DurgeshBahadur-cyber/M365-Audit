Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.7" {
    It "ISO27001.8.7: Ensure Office 365 SharePoint infected files are disallowed for download" {

        $result = Test-MtCisSpoPreventDownloadMaliciousFile

        if ($null -ne $result) {
            $result | Should -Be $true -Because "Office 365 SharePoint infected files are disallowed for download"
        }
    }
}
Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7" {
    It "ISO27002.8.7: Ensure Office 365 SharePoint infected files are disallowed for download" {

        $result = Test-MtCisSpoPreventDownloadMaliciousFile

        if ($null -ne $result) {
            $result | Should -Be $true -Because "Office 365 SharePoint infected files are disallowed for download"
        }
    }
}
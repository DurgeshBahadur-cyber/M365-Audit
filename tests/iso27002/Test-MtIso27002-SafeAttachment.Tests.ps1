Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7" {
    It "ISO27002.8.7: Ensure Safe Attachments policy is enabled (Only Checks Default Policy)" {

        $result = Test-MtCisSafeAttachment

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the default Safe Attachement policy matches CIS recommendations."
        }
    }
}
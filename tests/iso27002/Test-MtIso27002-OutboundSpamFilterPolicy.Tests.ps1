Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:8.7", "ISO27002:8.20" {
    It "ISO27002.8.7, ISO27002.8.20: Ensure Exchange Online Spam Policies are set to notify administrators (Only Checks Default Policy)" {

        $result = Test-MtCisOutboundSpamFilterPolicy

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the default Exchange Online Spam policy is set to notify administrators."
        }
    }
}
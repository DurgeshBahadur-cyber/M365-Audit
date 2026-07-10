Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.16", "ISO27001:5.17" {
    It "ISO27001.5.16, ISO27001.5.17: Ensure sign-in to shared mailboxes is blocked" {

        $result = Test-MtCisSharedMailboxSignIn

        if ($null -ne $result) {
            $result | Should -Be $true -Because "Sign ins are blocked for shared mailboxes"
        }
    }
}
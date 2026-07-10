Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:8.7", "ISO27001:8.20" {
    It "ISO27001.8.7, ISO27001.8.20: Ensure the connection filter IP allow list is not used (Only Checks Default Policy)" {

        $result = Test-MtCisHostedConnectionFilterPolicy

        if ($null -ne $result) {
            $result | Should -Be $true -Because "the IP Allow List is empty."
        }
    }
}
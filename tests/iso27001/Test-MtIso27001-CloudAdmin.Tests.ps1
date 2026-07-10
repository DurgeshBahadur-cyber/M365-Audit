Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.16", "ISO27001:5.18", "ISO27001:8.2" {
    It "ISO27001.5.16, ISO27001.5.18, ISO27001.8.2: Ensure Administrative accounts are cloud-only" {

        $result = Test-MtCisCloudAdmin

        if ($null -ne $result) {
            $result | Should -Be $true -Because "admin accounts are cloud-only"
        }
    }
}
Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.16", "ISO27002:5.18", "ISO27002:8.2" {
    It "ISO27002.5.16, ISO27002.5.18, ISO27002.8.2: Ensure Administrative accounts are cloud-only" {

        $result = Test-MtCisCloudAdmin

        if ($null -ne $result) {
            $result | Should -Be $true -Because "admin accounts are cloud-only"
        }
    }
}
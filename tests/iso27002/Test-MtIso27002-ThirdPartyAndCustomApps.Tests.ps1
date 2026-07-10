Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.21" {
    It "ISO27002.5.21: Ensure all or a majority of third-party and custom apps are blocked" -Tag "CIS.M365.8.4.1", "CIS E3 Level 1" {

        $result = Test-MtCisThirdPartyAndCustomApps

        if ($null -ne $result) {
            $result | Should -Be $true -Because "all or a majority of third-party and custom apps are blocked."
        }
    }
}
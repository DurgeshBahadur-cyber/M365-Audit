Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.15", "ISO27001:5.18" {
    It "ISO27001.5.15, ISO27001.5.18: Ensure that only organizationally managed/approved public groups exist" {

        $result = Test-MtCis365PublicGroup

        if ($null -ne $result) {
            $result | Should -Be $true -Because "365 groups are private"
        }
    }
}
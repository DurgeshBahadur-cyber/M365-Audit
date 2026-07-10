Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.15", "ISO27002:5.18" {
    It "ISO27002.5.15, ISO27002.5.18: Ensure that only organizationally managed/approved public groups exist" {

        $result = Test-MtCis365PublicGroup

        if ($null -ne $result) {
            $result | Should -Be $true -Because "365 groups are private"
        }
    }
}
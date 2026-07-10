Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14", "ISO27001:5.15" {
    It "ISO27001.5.14, ISO27001.5.15: Ensure 'External sharing' of calendars is not available" {

        $result = Test-MtCisCalendarSharing

        if ($null -ne $result) {
            $result | Should -Be $true -Because "calendar sharing is disabled."
        }
    }
}
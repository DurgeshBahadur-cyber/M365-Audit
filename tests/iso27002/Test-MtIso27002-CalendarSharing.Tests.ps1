Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.14", "ISO27002:5.15" {
    It "ISO27002.5.14, ISO27002.5.15: Ensure 'External sharing' of calendars is not available" {

        $result = Test-MtCisCalendarSharing

        if ($null -ne $result) {
            $result | Should -Be $true -Because "calendar sharing is disabled."
        }
    }
}
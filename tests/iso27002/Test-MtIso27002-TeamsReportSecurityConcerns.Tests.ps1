Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.24", "ISO27002:5.26" {
    It "ISO27002.5.24, ISO27002.5.26: Ensure users can report security concerns in Teams to internal destination" {

        $result = Test-MtCisTeamsReportSecurityConcerns

        if ($null -ne $result) {
            $result | Should -Be $true -Because "report security concerns in Teams is only to internal destination."
        }
    }
}
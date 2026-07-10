Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.24", "ISO27001:5.26" {
    It "ISO27001.5.24, ISO27001.5.26: Ensure users can report security concerns in Teams to internal destination" {

        $result = Test-MtCisTeamsReportSecurityConcerns

        if ($null -ne $result) {
            $result | Should -Be $true -Because "report security concerns in Teams is only to internal destination."
        }
    }
}
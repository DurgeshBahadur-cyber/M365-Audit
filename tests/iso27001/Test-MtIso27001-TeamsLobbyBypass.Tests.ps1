Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14", "ISO27001:8.20" {
    It "ISO27001.5.14, ISO27001.8.20: Ensure only people in my org can bypass the lobby" {

        $result = Test-MtCisTeamsLobbyBypass

        if ($null -ne $result) {
            $result | Should -Be $true -Because "Global (Org-wide default) meeting policy is configured to only bypass the lobby for 'Peoply in my org'."
        }
    }
}
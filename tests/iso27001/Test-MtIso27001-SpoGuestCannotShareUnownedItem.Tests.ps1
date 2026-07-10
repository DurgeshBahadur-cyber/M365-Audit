Describe "ISO 27001" -Tag "ISO 27001", "ISO27001:5.14", "ISO27001:5.15" {
    It "ISO27001.5.14, ISO27001.5.15: Ensure that SharePoint guest users cannot share items they don't own" {

        $result = Test-MtCisSpoGuestCannotShareUnownedItem

        if ($null -ne $result) {
            $result | Should -Be $true -Because "SharePoint guest users cannot share items they don't own"
        }
    }
}
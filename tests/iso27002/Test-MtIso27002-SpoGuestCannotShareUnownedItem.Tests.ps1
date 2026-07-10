Describe "ISO 27002" -Tag "ISO 27002", "ISO27002:5.14", "ISO27002:5.15" {
    It "ISO27002.5.14, ISO27002.5.15: Ensure that SharePoint guest users cannot share items they don't own" {

        $result = Test-MtCisSpoGuestCannotShareUnownedItem

        if ($null -ne $result) {
            $result | Should -Be $true -Because "SharePoint guest users cannot share items they don't own"
        }
    }
}
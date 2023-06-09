$os = Get-OSVersion
Describe "Git" {
    It "git is installed" {
        "git --version" | Should -ReturnZeroExitCode
    }
    It "git lfs is installed" {
        "git lfs version" | Should -ReturnZeroExitCode
    }
}
Describe "hub CLI" -Skip:($os.IsVentura) {
    It "hub CLI is installed" {
        "hub --version" | Should -ReturnZeroExitCode
    }
}
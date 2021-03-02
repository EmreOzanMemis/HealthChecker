Function Get-ExchangeApplicationConfigurationFileValidation {
    param(
        [string[]]$ConfigFileLocation
    )
    Write-VerboseOutput("Calling: Get-ExchangeApplicationConfigurationFileValidation")
    $results = @{}
    $ConfigFileLocation |
        ForEach-Object {
            $obj = Invoke-ScriptBlockHandler -ComputerName $Script:Server -ScriptBlockDescription "Getting Exchange Application Configuration File Validation" `
                -CatchActionFunction ${Function:Invoke-CatchActions} `
                -ScriptBlock {
                param($Location)
                return [PSCustomObject]@{
                    Present  = ((Test-Path $Location))
                    FileName = ([IO.Path]::GetFileName($Location))
                    FilePath = $Location
                }
            } -ArgumentList $_
            $results.Add($obj.FileName, $obj)
        }
    return $results
}
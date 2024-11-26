function Get-NumberPower 
{
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [Int]
        $number,
        [Int]
        $power = 2
    )
    $result = [Math]::Pow($number, $power)
    Write-Output $result
}
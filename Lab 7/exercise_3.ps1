function Get-DiceRoll
{
    param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [Int]
        $dices
    )
    $dice1 = 1, 2, 3, 4, 5, 6
    $dice2 = 1 ,2, 3, 4, 5, 6
    $diceroll1 = $dice1 | Get-Random
    $diceroll2 = $dice2 | Get-Random
    if ($dices -eq 1)
    {
        Write-Host $diceroll1
    }
    elseif ($dices -eq 2)
    {
        $total = $diceroll1 + $diceroll2
        Write-Host $total
    }
    else 
    {
        Write-Host "Invalid number of Dices entered, only 1 and 2 are accepted, please try again!"
    }
}

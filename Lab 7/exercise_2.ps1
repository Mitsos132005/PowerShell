function SumOfImputs
{
    $target = Read-Host "Enter the limit"
    $sum = 0
    while ($sum -lt $target){
        $number = Read-Host "Enter an integer number"
        $sum =+ $number
    }
    Write-Host "The limit of $target is reached"
}

SumOfImputs
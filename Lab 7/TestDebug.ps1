$a = 10..0
$b = 5
foreach ($i in $a)
{
    if ($i -ne 0)
    {
        $c = $b / $i
        Write-Host $c
    } else {
        Write-Host "Cannot devide by zero"
    }
}

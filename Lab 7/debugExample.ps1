function Write-OutRPSOption () {

   $RPSChoice = Get-Random -Minimum 1 -Maximum 10 #will be less than the max, i.e. 1-9  -   1..1000 | % {Get-Random -Minimum 1 -Maximum 9} | group | select name,count
    Write-Verbose "Random number was $RPSChoice"
    switch ($RPSChoice) {
        {$PSItem -gt 1 -and $PSItem -lt 3} { write-output "**   ROCK   **" }
        {$PSItem -gt 4 -and $PSItem -lt 6} { write-output "**   PAPER  **" }
        {$PSItem -gt 7 -and $PSItem -lt 9} { write-output "** SCISSORS **" }
    }
}

function Start-RPSGame {
    param (
        $NoOfRounds
    )

    $Round = 1

    while($Round -le $NoOfRounds)
    {
        for ($RPSCounterDisp = 1; $RPSCounterDisp -lt 3; $RPSCounterDisp++) {
            switch ($RPSCounterDisp) {
                1 { Write-Output "Rock" }
                2 { Write-Output "Paper" }
                3 { Write-Output "Scissors" }
            }
            Start-Sleep -Milliseconds 500
        }
        #$lala = Get-Random -Minimum 1 -Maximum 9 #will be less than the max, i.e. 1-9  -   1..1000 | % {Get-Random -Minimum 1 -Maximum 9} | group | select name,count
        Write-OutRPSOption

        $Round++
        Write-Output "`n`n"
        Start-Sleep -Seconds 2
    }


}

#Main Execution Block
Write-Output "Three rounds of rock, paper, scissors!"
Start-Sleep -Seconds 1

Write-Output ""

Start-RPSGame(3)
        #$lala = Get-Random -Minimum 1 -Maximum 10 #will be less than the max, i.e. 1-9  -   1..1000 | % {Get-Random -Minimum 1 -Maximum 9} | group | select name,count
        #Write-OutRPSOption -RPSChoice $lala
Write-Output "`nThanks for playing"

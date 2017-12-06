$clef_bin_dir=$PSScriptRoot + "/../bin"

$projs=@("program1", "program2", "program3")

foreach ($proj in $projs){
    $jarName=$clef_bin_dir + "/" + $proj + ".jar"

    Write-Host $jarName

    Start-Job -ScriptBlock { Param($one,$two,$three)
     java -jar $one 1> $HOME/logs/$two-console.out 2> $HOME/logs/$three-console.error
    } -ArgumentList $jarName,$proj,$proj

    Start-Sleep -s 5
}

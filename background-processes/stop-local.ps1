$clef_bin_dir=$PSScriptRoot + "/../bin"

$projs=@("program1", "program2", "program3")


foreach($proj in $projs) {
    $jarName = $proj + ".jar"
    echo $jarName
    $procs = Get-WmiObject Win32_Process  | ? { $_.commandline -match $jarName }  | Select ProcessId,CommandLine
    foreach($proc in $procs)
    {
        kill $proc.ProcessId
    }
}


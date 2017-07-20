# powershell-cheatsheet

Some commonly used powershell tricks

## Delete all files with the same name recursively

The following command delete all files that has the name .DS_Store

```powershell
Get-ChildItem -Include ".DS_Store" -Recurse -Force | Remove-Item -Force –Recurse
```

## Replace a particular text in all files of the same extensions recursively in a folder

The following command replace the text "old-text" with "new-text" for all files with .cs extension in the current directory recursively.

```powershell
Get-ChildItem . *.cs -Recurse | foreach-object { $a = $_.fullname; ( get-content $a ) | foreach-object { $_ -replace "old-text","new-text" } | set-content $a }
```

## List all files and folder containing a particular text recursively

The following comand display the list of all files and directories containing the string "codezone" in the current directory 

```powershell
Get-ChildItem -recurse | Select-String -pattern "codezone" | group path | select name
```

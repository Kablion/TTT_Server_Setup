Const sInFile = "C:\GModServer\maps.txt"
aryMaps = Split(CreateObject("Scripting.FileSystemObject").OpenTextfile(sInFile, 1).ReadAll, vbCrLF)
nMaps = UBound(aryMaps) - LBound(aryMaps) + 1
Dim Rndnum
Randomize
Rndnum = Int((nMaps*Rnd) + 0)
Dim Rndmap
Rndmap = aryMaps(Rndnum)
wscript.echo Rndmap

# no need to source regular profiles since we cannot
# overwrite those with powershell. Instead we will source
# this file with -NoExit
$env:PATH = "/home/cypheroxide/.waveterm/bin" + ":" + $env:PATH

Public Function GetRandNumber(min, max)
    Randomize
    GetRandNumber = Int((max-min+1)*Rnd+min)
End Function

Set objShell=CreateObject("Wscript.Shell")
do
    big_gap = GetRandNumber(500, 2500)
    small_gap = GetRandNumber(0,50)
    'Wsh.echo "big gap", big_gap
    'Wsh.echo "small gap", small_gap
    WScript.Sleep(big_gap)
    'objShell.SendKeys " "
    objShell.SendKeys "g"
    Wscript.sleep(small_gap)
    objShell.SendKeys "."
loop
 

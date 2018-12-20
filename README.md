# BattleForgeRebornCheck
Powershell script for checking install directory for correct files

## How To Run


Press your windows key or click on the Start button in windows, type 'cmd' and open 'Command Prompt'

Once open, type 'Powershell'

your terminal should look something like this

`
PS C:\Users\Astiliano>
`

Open the script in raw format

(First 1000~ lines are just a list! Scroll to the bottom for the actual logic)

https://raw.githubusercontent.com/Astiliano/BattleForgeRebornCheck/master/BFcheck.ps1

Look over the script to make sure it isn't malicious (No deleting, removing, searching random stuff)

Copy All  (CTRL+A then CTRL+C)

Paste into 'Command Prompt' (Right Click)

Follow the script instructions.


### Example Output

This is ran on a directory where Updater.zip was not extracted to


```

------------- Checking F:\Battleforge\BattleForge_2\BattleForge for Updater.zip extracted files -------------


[FAIL] ControlzEx.dll - Not Found
[FAIL] MahApps.Metro.dll - Not Found
[FAIL] Patcher.exe - Not Found
[FAIL] SkylordsRebornUpdater.exe - Not Found
[FAIL] System.Windows.Interactivity.dll - Not Found


------------- Checking F:\Battleforge\BattleForge_2\BattleForge for BattleForge.rar extracted files -------------

[OK] BattleForge.exe
[OK] base
[OK] bf1
[OK] bf_cr_release.dll
[OK] bf_logic_release.dll
[OK] bf_mg_release.dll
[OK] bf_path_release.dll
[OK] bf_res_release.dll
...
...
...

------------- Final Results -------------


##### Missing Updater.zip files:
ControlzEx.dll
MahApps.Metro.dll
Patcher.exe
SkylordsRebornUpdater.exe
System.Windows.Interactivity.dll



##### Missing BattleForge.rar files:



Complete - Press Enter to exit:

```

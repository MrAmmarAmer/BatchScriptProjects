# Shutdown Timer (Batch Script)

A lightweight Windows batch script that lets you schedule an automatic shutdown after a user-defined number of minutes.
No installations, no external tools — just pure batch.

## 📌 Features

* Prompts the user to enter a number of minutes
* Converts minutes to seconds automatically
* Initiates a clean system shutdown after the countdown
* Uses built-in Windows commands only
* Works on all modern Windows versions

## 🧩 Clickable shortcut

* Example:
1. Create a shortcut anywhere on your computer
2. Add the following script as the target of the shortcut. 
	```batch
    cmd.exe /v:on /c "set /p t=Enter minutes to shutdown (Enter=now, x=reset): & @if /i "!t!"=="x" (shutdown /a) else if "!t!"=="" (shutdown /s /t 0) else (set /a s=!t!*60 >nul & shutdown /f /s /t !s!)" & pause
 	```

3. [optional] Download & Add the `BatchScriptProjects/Shutdown-Timer/custom-icon.ico` as the custom icon of the shortcut.
4. [In some projects, it is required] Go to the properties of the  shortcut >> Advanced >> Run as Administrator >> Ok >> Ok
5. Use it by clicking it; now you have a simple and useful shutdown timer program.


## 📝 Requirements

* Windows 7, 8, 10, 11
* Command Prompt

## ❗ Notes

* The shutdown will happen automatically when the countdown finishes.
* You can safely cancel the countdown at any time using `shutdown /a`.
* The script does not require admin privileges unless system policies restrict shutdown commands.

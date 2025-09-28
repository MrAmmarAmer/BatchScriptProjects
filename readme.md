# 🖥️ Batch Script Projects

A collection of useful **Batch Script projects** and mini-tools for Windows automation, productivity, and learning.
This repository is perfect for developers, sysadmins, and enthusiasts who want to explore the power of Windows CMD scripting.

---

## 📚 About

This repository contains multiple Batch scripts that solve real-world problems, automate tasks, and demonstrate core concepts like:

* File and folder management
* User interaction with `set /p`
* System utilities (shutdown, restart, etc.)
* Networking commands
* Automation tricks and hidden Windows commands

I regularly update this repository with **new projects**, so consider starring ⭐ it to stay up to date.


---

## 📂 Repository Structure

```
BatchScriptProjects/
│
├── Shutdown-Timer/		# Example project with short description
└── More							# soon             
```

* Each file is self-contained and well-commented for easy understanding.
* Each file contains the main script in a batch. Some others include the `single-command.bat` file, which contains the same script, but is slightly different. To run as a single command.

** 📌 It is useful when used as a clickable shortcut**.

* Example:
1. Create a shortcut anywhere on your computer
2. Add the following script as the target of the shortcut. 
	```batch
		cmd.exe /v:on /c "set /p t=Enter minutes to shutdown (Enter=now, x=cancel): & if /i "!t!"=="x" (shutdown /a) else if "!t!"=="" (shutdown /s /t 0) else (set /a s=!t!*60 >nul & shutdown /f /s /t !s!)" & pause
	```
	source: `BatchScriptProjects/Shutdown-Timer/single-command.bat`

3. [optional] Download & Add the `BatchScriptProjects/Shutdown-Timer/poweroff.ico` as the custom icon of the shortcut.
4. [In some projects, it is required] Go to the properties of the  shortcut >> Advanced >> Run as Administrator >> Ok >> Ok
5. Use it by clicking it; now you have a shutdown timer program.



---

## 🧠 Example Projects

Here are some examples of what's included:

* ✅ **Shutdown Timer** – Schedule automatic shutdown/restart
* ✅ **Folder Generator** – Create multiple folders in one go
* ✅ **Network Tools** – Get IP, MAC address, ping websites
* ✅ **File Hider** – Combine image + file using `copy /b` trick
* ✅ **User Prompt Scripts** – Interactive scripts with input validation

---

## 💡 Why This Repo?

* Great for **beginners** to learn Batch scripting step by step
* Useful for **automation lovers** who want quick solutions
* A growing collection with **practical use cases**

---

## 🛠️ Requirements

* Windows 7/10/11
* Command Prompt (`cmd.exe`)

---

## 📜 License

This project is licensed under the **MIT License** – feel free to use, modify, and share.
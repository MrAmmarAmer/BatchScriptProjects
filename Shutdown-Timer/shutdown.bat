
:: Author: github.com/MrAmmarAmer
:: Project: github.com/MrAmmarAmer/

:: [Warning]: In some cases, the shutdown command doesn't work because of permissions.
::  					To solve that, run as administrator.

@echo off
Title Shutdown
		
:main
	Setlocal EnableDelayedExpansion
		:: Display a prompt to get the input from users
		set /p input=Enter minutes to shutdown (Enter=now, x=cancel): 
		:: This is a method to check if the value is a number
		set /a isNumeric=!input! >nul 2>null
		
		:: empty case, will shutdown now
		 IF "!input!"=="" (
			echo Shutdown Now..
			shutdown /f /s /t 0
		
		@rem x or X case, will cancel any scheduled shutdown 
		) else IF /i "!input!"=="X" (
		  echo Canceled the scheduled Shutdown..
			shutdown /a
			
		@rem Numeric case, will schedule the shutdown
		) else IF "!input!"=="!isNumeric!" (
			echo Successfully, The Shutdown is scheduled..
			set /a sec=!input!*60
			shutdown /f /s /t !sec!
			
		)  else (
			echo. & echo You entered an invalid value! Enter the number of minutes..  & echo.
			Goto main

		)

	Endlocal
Exit /b


			
			

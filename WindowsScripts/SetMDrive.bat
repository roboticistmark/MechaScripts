@ECHO off
ECHO ................ Mapping Music Drive ................
IF NOT EXIST "M:\MP3's" ( 
	GOTO ADDING
) ELSE (
	GOTO REMOVE	
)
:REMOVE
ECHO Removing M:
subst M: /D
GOTO END
:ADDING
ECHO Adding M:
subst M: "\\SHARKNAS\Music" 
GOTO END
:END
PAUSE

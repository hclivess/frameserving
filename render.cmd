ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO YouTube Render
ECHO ...............................................
ECHO.
ECHO 1 - 720
ECHO 2 - 1080
ECHO 3 - 1440
ECHO 4 - x265 crf 22
ECHO.

CHOICE /C:1234
IF ERRORLEVEL 1 SET M=1
IF ERRORLEVEL 2 SET M=2
IF ERRORLEVEL 3 SET M=3
IF ERRORLEVEL 4 SET M=4
ECHO.
IF %M%==1 GOTO OPT1
IF %M%==2 GOTO OPT2
IF %M%==3 GOTO OPT3
IF %M%==4 GOTO OPT4

:OPT1
ECHO --- 720 - [7.5 Mbit] - START -----------------------------------------------------------------------------------------
SET starttime=%time%
"C:\ffmpeg\ffmpeg.exe" -hide_banner -i "%~1" -y -c:v libx264 -preset medium -minrate 5.625M -b:v 7.5M -maxrate 9.375M -bufsize 9.375M -c:a aac -b:a 384k -movflags +faststart -bf 2 -flags +cgop -pix_fmt yuv420p -f mp4 "D:\video\untitled_output.mp4"
ECHO ----------------------------------------------
ECHO START : %starttime%
ECHO END   : %time%
ECHO ----------------------------------------------
ECHO --- 720 - [7.5 Mbit] - ENDED -----------------------------------------------------------------------------------------
PAUSE
GOTO EOF

:OPT2
ECHO --- 1080 - [12 Mbit] - START -----------------------------------------------------------------------------------------
SET starttime=%time%
"C:\ffmpeg\ffmpeg.exe" -hide_banner -i "%~1" -y -c:v libx264 -preset medium -minrate 9M -b:v 12M -maxrate 15M -bufsize 15M -c:a aac -b:a 384k -movflags +faststart -bf 2 -flags +cgop -pix_fmt yuv420p -f mp4 "D:\video\untitled_output.mp4"
ECHO ----------------------------------------------
ECHO START : %starttime%
ECHO END   : %time%
ECHO ----------------------------------------------
ECHO --- 1080 - [12 Mbit] - ENDED -----------------------------------------------------------------------------------------
PAUSE
GOTO EOF

:OPT3
ECHO --- 1440 - [24 Mbit] - START -----------------------------------------------------------------------------------------
SET starttime=%time%
"C:\ffmpeg\ffmpeg.exe" -hide_banner -i "%~1" -y -c:v libx264 -preset medium -minrate 18M -b:v 24M -maxrate 30M -bufsize 30M -c:a aac -b:a 384k -movflags +faststart -bf 2 -flags +cgop -pix_fmt yuv420p -f mp4 "D:\video\untitled_output.mp4"
ECHO ----------------------------------------------
ECHO START : %starttime%
ECHO END   : %time%
ECHO ----------------------------------------------
ECHO --- 1440 - [24 Mbit] - ENDED -----------------------------------------------------------------------------------------
PAUSE
GOTO EOF

:OPT4
ECHO --- 1440 - [24 Mbit] - START -----------------------------------------------------------------------------------------
SET starttime=%time%
"C:\ffmpeg\ffmpeg.exe" -hide_banner -i "%~1" -y -c:v libx265 -preset medium -crf 22 -c:a aac -b:a 384k -movflags +faststart -bf 2 -flags +cgop -pix_fmt yuv420p -f mp4 "D:\video\untitled_output.mp4"
ECHO ----------------------------------------------
ECHO START : %starttime%
ECHO END   : %time%
ECHO ----------------------------------------------
ECHO --- 1440 - [24 Mbit] - ENDED -----------------------------------------------------------------------------------------
PAUSE
GOTO EOF




:EOF
EXIT

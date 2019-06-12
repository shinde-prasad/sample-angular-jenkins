@echo off 

set myDIR=%date:~-7,2%%date:~-10,2%%date:~-4,4%_%time:~0,2%%time:~3,2%

set tomcatDir=C:\xampp\tomcat\webapps
set backup=backup\angular-jenkins-app
set projDir=pcc

IF not exist %tomcatDir%\%backup%\%myDIR% (mkdir %tomcatDir%\%backup%\%myDIR%)

IF exist %tomcatDir%\%projDir% (xcopy %tomcatDir%\%projDir% %tomcatDir%\%backup%\%myDIR% /s /y
) ELSE (echo "folder doesnt exists. Backup failed.")
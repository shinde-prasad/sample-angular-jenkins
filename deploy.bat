@echo off 

set tomcatDir=C:\xampp\tomcat\webapps
set srcDir=D:\workspace\Dockerise\my-angular-app\dist\my-angular-app
set projDir=%tomcatDir%\pcc

IF not exist %projDir% (mkdir %projDir%)
if not exist %srcDir% (echo "Build failed."
) ELSE (xcopy %srcDir% %projDir% /s /y)
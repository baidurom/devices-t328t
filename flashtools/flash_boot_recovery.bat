@echo off
@echo            警告：刷机会清楚所有用户数据，请提前备份数据 
@echo            请确保：
@echo                1. 手机已经通过官方渠道解锁
@echo                2. 驱动已经安装，且USB调试模式已经打开
@echo                3. 刷机过程中不能断开USB连接
@echo                4. 手机电量充足(30%)

@echo           请确认以上要求的都满足了吗? 
@echo           按任意键开始刷入百度boot.img....
PAUSE

@echo      正在重启手机到FASTBOOT模式......
.\tools\adb.exe kill-server
.\tools\adb.exe start-server
ping 127.0.0.1 -n 3 > nul
.\tools\adb.exe reboot-bootloader

@echo      正在更新boot.img......
@echo      注意：如果长时间停在这一步，请检查USB连接是否OK后重新运行该脚本,
@echo            或者通过按键手动进入FASTBOOT模式（由于机型差异，请自行百度一下自己的机型）
.\tools\fastboot.exe flash boot .\boot.img

set /p flashBaiduRecovery=是否刷入百度recovery？？（Y/N）:
if /i "%flashBaiduRecovery%"=="Y" (goto a) else (goto b)
:a
@echo      正在更新recovery.img......
.\tools\fastboot.exe flash recovery .\recovery.img
:b
set /p rebootRecovery=是否重启进入recovery开始卡刷？？（Y/N）:
if /i "%rebootRecovery%"=="Y" (goto c) else (goto d)
:c
@echo      正在进入百度recovery.....
.\tools\fastboot.exe boot .\recovery.img
exit 0
:d
@echo       按任意键重启进入百度云ROM
PAUSE
.\tools\fastboot.exe reboot

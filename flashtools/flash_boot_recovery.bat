@echo off
@echo            ���棺ˢ������������û����ݣ�����ǰ�������� 
@echo            ��ȷ����
@echo                1. �ֻ��Ѿ�ͨ���ٷ���������
@echo                2. �����Ѿ���װ����USB����ģʽ�Ѿ���
@echo                3. ˢ�������в��ܶϿ�USB����
@echo                4. �ֻ���������(30%)

@echo           ��ȷ������Ҫ��Ķ���������? 
@echo           ���������ʼˢ��ٶ�boot.img....
PAUSE

@echo      ���������ֻ���FASTBOOTģʽ......
.\tools\adb.exe kill-server
.\tools\adb.exe start-server
ping 127.0.0.1 -n 3 > nul
.\tools\adb.exe reboot-bootloader

@echo      ���ڸ���boot.img......
@echo      ע�⣺�����ʱ��ͣ����һ��������USB�����Ƿ�OK���������иýű�,
@echo            ����ͨ�������ֶ�����FASTBOOTģʽ�����ڻ��Ͳ��죬�����аٶ�һ���Լ��Ļ��ͣ�
.\tools\fastboot.exe flash boot .\boot.img

set /p flashBaiduRecovery=�Ƿ�ˢ��ٶ�recovery������Y/N��:
if /i "%flashBaiduRecovery%"=="Y" (goto a) else (goto b)
:a
@echo      ���ڸ���recovery.img......
.\tools\fastboot.exe flash recovery .\recovery.img
:b
set /p rebootRecovery=�Ƿ���������recovery��ʼ��ˢ������Y/N��:
if /i "%rebootRecovery%"=="Y" (goto c) else (goto d)
:c
@echo      ���ڽ���ٶ�recovery.....
.\tools\fastboot.exe boot .\recovery.img
exit 0
:d
@echo       ���������������ٶ���ROM
PAUSE
.\tools\fastboot.exe reboot

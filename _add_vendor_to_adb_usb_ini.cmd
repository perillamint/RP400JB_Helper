@echo off
chcp 949 1> NUL 2> NUL
set "PATH=%~dp0\bin;%~dp0\tools;%PATH%"

pushd "%~dp0"

echo # ���� ����� ADB ���� ���Ͽ� ��Ʈ�δн��� Vendor ID��(0x1f85) �߰��մϴ�:
set ADB_USB="%userprofile%\.android\adb_usb.ini"
echo  %ADB_USB%
echo 0x1f85>>%ADB_USB%
echo.

echo # ���� ���� ���� ADB ������ ������ �̸� �����մϴ�:
adb kill-server
echo.

echo # ���� Ű �Ǵ� �ƹ� Ű�� ���� �����ϼ���!
pause > nul
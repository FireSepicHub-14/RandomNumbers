@echo off
chcp 65001
color 8a
echo;
echo;
echo;
echo;
echo;
echo 0から32767の間で、randomな数を出力するだけのプログラム。
echo;
echo 何かキーを押してから約3秒後にrandomな数が表示されます。
pause
echo;

setlocal enabledelayedexpansion

set /a Total=5000
set /a Rate=0
set /a Display=1

for /l %%i in (1,1,%Total%) do (
    set /a Rate=%%i * 20
    set /a Rate/=%Total%
    if !Rate! geq !Display! (
        set /p Bar=■< nul
        set /a Display+=1
    )
)


@rem old timer
@rem echo random数生成中...
@rem echo;
@rem for /l %%a in (3,-1,1) do (
@rem    echo 残り %%a 秒...
@rem    timeout /t 1 > nul
@rem
@rem )

echo;
echo;
echo;
echo;
echo ------------------------------------------
echo ----------------- number -----------------
echo;
echo;
echo;
echo %RANDOM%
echo;
echo;
echo;
echo ----------------- number -----------------
echo ------------------------------------------
echo 生成日時
echo Time %TIME%    / Date %DATE%
echo;
echo 何かキーを押して、このwindowを閉じる。
pause
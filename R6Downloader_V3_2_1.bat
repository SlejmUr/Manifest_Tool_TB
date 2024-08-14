::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCiDJGvS2W0UFykCYyimAGi1C6UV5O3H3OKCuwMUV+1f
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZkkaHWQ=
::ZQ05rAF9IBncCkqN+0xwdVsHAlbMbQs=
::ZQ05rAF9IAHYFVzEqQICfltwQxOMMGS7ArAOiA==
::eg0/rx1wNQPfEVWB+kM9LVsJDDbUfE+1EbsQ5+n/6vjn
::fBEirQZwNQPfEVWB+kM9LVsJDDbUfE+1EbsQ5+n/6vjn
::cRolqwZ3JBvQF1fEqQICfltwQxOMMGS7ArAOiA==
::dhA7uBVwLU+EWGvStGY/PxVYQwWGOXna
::YQ03rBFzNR3SWATExhRwDBRDQgiNPW+/FNU=
::dhAmsQZ3MwfNWATExhRwDBRDQgiNPW+/FNU=
::ZQ0/vhVqMQ3MEVWAtB9wGk0UaAuVMme1B7EZ+og=
::Zg8zqx1/OA3MEVWAtB9wGk0UaAuVMme1B7EZ+og=
::dhA7pRFwIByZRRm2ogIUJwxaQAuDOG6oZg==
::Zh4grVQjdCiDJGvS2W0UFykCYyimAG2zCLQQ1Nqty+WQrEESVeY6arDtiYvcH7Fd713hFQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@shift /0
@shift /0
@echo off
setlocal enableextensions



Color 0F

set maxservers_and_downloads=20
set useqr=0
set command="-qr"
set emptycommand=""
set usecommand=""

:onedrive
ECHO %cd% | FIND /C "OneDrive" >NUL
IF ERRORLEVEL 1 (
goto dotnetcheck
) ELSE (
echo You ran the downloader in a OneDrive folder, move the downloader to a different location. If you can't figure out how to move it follow this: https://shorturl.at/qk3SX
pause
exit
)


:dotnetcheck
Title Downloading .NET Core SDK...
MODE 67,5
if exist "C:\Program Files\dotnet\dotnet.exe" (
goto dotnetchecktwo
) else (
  start https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-8.0.200-windows-x64-installer
  cls
  echo Please run the .NET Core SDK installer and restart the downloader.
  echo.
  pause
  echo Do you want to continue?
  )
goto dotnetchecktwo

::dotnet checker 2
:dotnetchecktwo
if exist "C:\Program Files\dotnet\sdk\8.0.200\dotnet.dll" (
goto 7zipcheck
) else (
  echo Seems you have different dotnet or x86 or 32bit windows.
  dotnet --version
  dotnet --list-runtimes
  dotnet --list-sdks
  echo.
  pause
  )
goto 7zipcheck


::Get shits
  :7zipcheck
    MODE 62,50
    if exist "Resources\7z.exe" (
      goto DepotCheck
    ) else (
      mkdir Resources
      goto no7zip
    )
    goto 7zipcheck

  :no7zip
    cls
    MODE 79,20
    echo -------------------------------------------------------------------------------
    echo                       Downloading 7-Zip...
    echo -------------------------------------------------------------------------------
    curl.exe -L  "https://github.com/DataCluster0/R6TBBatchTool/raw/master/Requirements/7z.exe" --ssl-no-revoke --output 7z.exe
    move 7z.exe Resources
    goto 7zipcheck

  :DepotCheck
    if exist "Resources\DepotDownloader.dll" (
      goto PlazaCheck
    ) else (
      goto DepotDownloader
    )
    goto DepotCheck

  :DepotDownloader
    cls
    MODE 79,20
    echo -------------------------------------------------------------------------------
    echo                        Downloading DepotDownloader...
    echo -------------------------------------------------------------------------------
    curl -L  "https://github.com/SteamRE/DepotDownloader/releases/download/DepotDownloader_2.6.0/DepotDownloader-framework.zip" --ssl-no-revoke --output depot.zip
    ::Extract
    for %%I in ("depot.zip") do (
      "Resources\7z.exe" x -y -o"Resources" "%%I" -aoa && del %%I
    )
    goto DepotCheck
  

:PlazaCheck
    if exist "Resources\Plazas" (
      goto cmdCheck 
    ) else (
      goto GetPlaza
    )
    goto PlazaCheck

  :GetPlaza
    cls
    MODE 79,20
    echo -------------------------------------------------------------------------------
    echo                          Downloading Plaza Bypass...
    echo -------------------------------------------------------------------------------
    curl -L  "https://github.com/SlejmUr/Manifest_Tool_TB/raw/main/Plazas.zip" --ssl-no-revoke --output plazas.zip
    ::Extract
    for %%I in ("plazas.zip") do (
    "Resources\7z.exe" x -y -o"Resources\Plazas" "%%I" -aoa && del %%I
    )
    goto PlazaCheck

  :cmdCheck
    if exist "Resources\cmdmenusel.exe" (
      goto foridiots
    ) else (
      goto GetCmd
    )
    goto cmdCheck

  :GetCmd
    cls
    MODE 79,20
    echo -------------------------------------------------------------------------------
    echo                        Downloading cmdmenusel...
    echo -------------------------------------------------------------------------------
    curl -L  "https://github.com/SlejmUr/R6-AIOTool-Batch/raw/master/Requirements/cmdmenusel.exe" --ssl-no-revoke --output cmdmenusel.exe
    move cmdmenusel.exe Resources
    goto cmdCheck
::End get shit


:foridiots
Title Rainbow Six Siege Downloader
cls
MODE 87,10
echo ---------------------------------------------------------------------------------------
echo ^| If you come across a problem/issue, or have a question,                             ^|
echo ^| PLEASE read the FAQ and Guide section before asking for help in our discord server. ^|
echo ^| Your problem can most likely be resolved by reading the FAQ and Guide.              ^|
echo ---------------------------------------------------------------------------------------
echo.
timeout /T 10 >nul | echo 			Please wait 10 sec to continue^!
Resources\cmdMenuSel f870 "                                    Continue" ""
if %ERRORLEVEL% == 1 goto guidefaq



:mainmenu
Title Rainbow Six Siege Downloader
cls
MODE 81,18
echo ---------------------------------------------------------------------------------
echo ^| Rainbow Six Siege Downloader ^| Join the modding community: soon               ^|
echo ---------------------------------------------------------------------------------
echo ^|    You MUST have a copy of Siege on Steam to use the downloader.              ^|
echo ---------------------------------------------------------------------------------
echo ^|                Click on the option you would like to select.                  ^|
echo ---------------------------------------------------------------------------------
echo ^|   NOTE: The Sku RUS Downloader is meant for people with missing exe files.    ^|
echo ---------------------------------------------------------------------------------
echo.
Resources\cmdMenuSel f870 "  Game Downloader" "  Sku RUS Downloader" "  Installation Guide and FAQ" "  More Settings"
if %ERRORLEVEL% == 1 goto siegemenu
if %ERRORLEVEL% == 2 goto skurus
if %ERRORLEVEL% == 3 goto guidefaq
if %ERRORLEVEL% == 4 goto moresettings


:moresettings
Title Rainbow Six Siege Downloader
cls
MODE 81,18
echo.
echo QR Code: %useqr% (default is no) (0 is no, 1 is yes)
echo Max servers: %maxservers_and_downloads% (default is 20)
echo.
Resources\cmdMenuSel f870 "  <- Back to Main Menu" "  Set use QR" "  Set more download speed"
if %ERRORLEVEL% == 1 goto mainmenu
if %ERRORLEVEL% == 2 (
  if %useqr% == 1 (
    set useqr=0
  ) else (
    set useqr=1
  )
  goto qrcommand
)
if %ERRORLEVEL% == 3 (
  if %maxservers_and_downloads% == 20 (
    set maxservers_and_downloads=50
  ) else (
    set maxservers_and_downloads=20
  )
  goto moresettings
)

:qrcommand
if %useqr% == 1 (
  set "usecommand=-qr"
) else (
  set usecommand=""
)
goto moresettings



:siegemenu
Title Game Download
cls
MODE 73,50
echo -------------------------------------------------------------------------
echo ^| Click on the version of Rainbow Six Siege you would like to download. ^|
echo -------------------------------------------------------------------------
echo.
Resources\cmdMenuSel f870 "  <- Back to Main Menu" "" "  Vanilla 1.0 | 14.2 GB" "  Black Ice 2.0 | 16.7 GB" "  Dust Line 3.0 | 20.9 GB" "  Skull Rain 4.2 | 25.1 GB" "  Red Crow 5.0 | 28.5 GB" "  Velvet Shell 2.1.0 | 33.2 GB" "  Health 2.2.0 | 34 GB" "  Blood Orchid 2.3.1.1 | 34.3 GB" "  White Noise 2.4.0 | 48.7 GB" "  Chimera 3.1.0 (Outbreak) | 58.8 GB" "  Para Bellum 3.2.0 | 63.3 GB" "  Grim Sky 3.3.2 (Mad House) | 72.6 GB" "  Wind Bastion 3.4.0 | 76.9 GB" "  Burnt Horizon 4.1.0.2 (Rainbow Is Magic) | 59.7 GB" "  Phantom Sight 4.2.0 (Showdown) | 67.1 GB" "  Ember Rise 4.3.3.1 (Doktor's Curse/Money Heist) | 69.6 GB" "  Shifting Tides 4.4.0 (Stadium) | 75.2 GB" "  Void Edge 5.1.2 (The Grand Larceny/Golden Gun) | 74.3 GB" "  Steel Wave 5.2.3 (M.U.T.E. Protocol) | 81.3 GB" "  Shadow Legacy (Sugar Fright)" "  Neon Dawn (Road To S.I. 2021) [No withstand]" "  Crimson Heist (Rainbow Is Magic 2 | Apocalypse)" "  North Star (Nest Destruction)" "  Crystal Guard (Showdown)" "  High Calibre (Stadium+Snowball)" "  Demon Veil (TOKY)" "  Vector Glare (Mute Reboot)" "  Brutal Swarm (Doctors Sniper)" "  Solar Raid (Snow Brawl)" "  Commanding Force (RIM + TOKY)" "  Dread Factor (Rengoku V2)" "  Heavy Mettle (Doktors Curse)" "  Deep Freeze (Y8S4)" "  Deadly Omen (Y9S1)"
echo.
if %ERRORLEVEL% == 1 goto mainmenu
if %ERRORLEVEL% == 2 goto siegemenu
set /p username="Enter Steam Username:"
if %ERRORLEVEL% == 3 goto vanilla
if %ERRORLEVEL% == 4 goto blackice
if %ERRORLEVEL% == 5 goto dustline
if %ERRORLEVEL% == 6 goto skullrain
if %ERRORLEVEL% == 7 goto redcrow
if %ERRORLEVEL% == 8 goto velvetshell
if %ERRORLEVEL% == 9 goto health
if %ERRORLEVEL% == 10 goto bloodorchid
if %ERRORLEVEL% == 11 goto whitenoise
if %ERRORLEVEL% == 12 goto chimera
if %ERRORLEVEL% == 13 goto parabellum
if %ERRORLEVEL% == 14 goto grimsky
if %ERRORLEVEL% == 15 goto windbastion
if %ERRORLEVEL% == 16 goto burnthorizon
if %ERRORLEVEL% == 17 goto phantomsight
if %ERRORLEVEL% == 18 goto emberrise
if %ERRORLEVEL% == 19 goto shiftingtides
if %ERRORLEVEL% == 20 goto voidedge
if %ERRORLEVEL% == 21 goto steelwave
if %ERRORLEVEL% == 22 goto shadowlegacy
if %ERRORLEVEL% == 23 goto neondawn
if %ERRORLEVEL% == 24 goto crimsonheist
if %ERRORLEVEL% == 25 goto northstar
if %ERRORLEVEL% == 26 goto crystalguard
if %ERRORLEVEL% == 27 goto highcalibre
if %ERRORLEVEL% == 28 goto demonveil
if %ERRORLEVEL% == 29 goto vectorglare
if %ERRORLEVEL% == 30 goto brutalswarm
if %ERRORLEVEL% == 31 goto solarraid
if %ERRORLEVEL% == 32 goto commandingforce
if %ERRORLEVEL% == 33 goto dreadfactor
if %ERRORLEVEL% == 34 goto heavymettle
if %ERRORLEVEL% == 35 goto deepfreeze
if %ERRORLEVEL% == 36 goto deadlyomen
                                     
:vanilla
MODE 120,50
Title Downloading Vanilla...
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8358812283631269928 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 3893422760579204530 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_BO Downloads\Y1S0_Vanilla
goto downloadcomplete

:blackice
MODE 120,50
Title Downloading Black Ice...
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5188997148801516344 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 7932785808040895147 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_BO Downloads\Y1S1_BlackIce
goto downloadcomplete

:dustline
MODE 120,50
Title Downloading Dust Line...
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 2303064029242396590 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 2206497318678061176 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_BO Downloads\Y1S2_DustLine
goto downloadcomplete

:skullrain
MODE 120,50
Title Downloading Skull Rain...
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5819137024728546741 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5851804596427790505 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_BO Downloads\Y1S3_SkullRain
goto downloadcomplete

:redcrow
MODE 120,50
Title Downloading Red Crow...
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 3576607363557872807 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 8569920171217002292 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_BO Downloads\Y1S4_RedCrow
goto downloadcomplete

:velvetshell
MODE 120,50
Title Downloading Velvet Shell...
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 2248734317261478192 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 8006071763917433748 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y2S1_VelvetShell
goto downloadcomplete

:health
MODE 120,50
Title Downloading Health...
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5875987479498297665 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 708773000306432190 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y2S2_Health
goto downloadcomplete

:bloodorchid
MODE 120,50
Title Downloading Blood Orchid...
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 6708129824495912434 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1613631671988840841 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y2S3_BloodOrchid
goto downloadcomplete

:whitenoise
MODE 120,50
Title Downloading White Noise...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8748734086032257441 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 4221297486420648079 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y2S4_WhiteNoise
goto downloadcomplete

:chimera
MODE 120,50
Title Downloading Chimera...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5071357104726974256 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 4701787239566783972 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y3S1_Chimera
goto downloadcomplete

:parabellum
MODE 120,50
Title Downloading Para Bellum...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 6507886921175556869 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 8765715607275074515 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y3S2_ParaBellum
goto downloadcomplete

:grimsky
MODE 120,50
Title Downloading Grim Sky...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5562094852451837435 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 7781202564071310413 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y3S3_GrimSky
goto downloadcomplete

:windbastion
MODE 120,50
Title Downloading Wind Bastion...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 6502258854032233436 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 7659555540733025386 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y3S4_WindBastion
goto downloadcomplete

:burnthorizon
MODE 120,50
Title Downloading Burnt Horizon...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8356277316976403078 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5935578581006804383 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y4S1_BurntHorizon
goto downloadcomplete

:phantomsight
MODE 120,50
Title Downloading Phantom Sight...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 693082837425613508 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5408324128694463720 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y4S2_PhantomSight
goto downloadcomplete

:emberrise
MODE 120,50
Title Downloading Ember Rise...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 3546781236735558235 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 7869081741739849703 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y4S3_EmberRise
goto downloadcomplete

:shiftingtides
MODE 120,50
Title Downloading Shifting Tides...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 299124516841461614 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1842268638395240106 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y4S4_ShiftingTides
goto downloadcomplete

:voidedge
MODE 120,50
Title Downloading Void Edge...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 4736360397583523381 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 6296533808765702678 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y5S1_VoidEdge
goto downloadcomplete

:steelwave
MODE 120,50
Title Downloading Steel Wave...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 4367817844736324940 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 893971391196952070 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y5S2_SteelWave
goto downloadcomplete

:shadowlegacy
MODE 120,50
Title Downloading Shadow Legacy...
echo THIS version using Lumaplay^!
echo Make sure you starting Lumaplay.exe not the normal RainbowSix.exe^!
echo This version using After chanka update ^!
pause

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 85893637567200342 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S3_ShadowLegacy"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 3089981610366186823 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S3_ShadowLegacy" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\LumaPlay Downloads\Y5S3_ShadowLegacy /s
goto downloadcomplete

:neondawn
MODE 120,50
Title Downloading Neon Dawn...
echo THIS version using CPlay^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
echo This version using After zofia update ^!
pause

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 4713320084981112320 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S4_RoadToSI_AW"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 3711873929777458413 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S4_RoadToSI_AW" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\CPlay Downloads\Y5S4_RoadToSI_AW /s
goto downloadcomplete

:crimsonheist
MODE 120,50
Title Downloading Crimson Heist...
echo THIS version using CPlay^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 7890853311380514304 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S1_ToyRainbow"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 7485515457663576274 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S1_ToyRainbow" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\CPlay Downloads\Y6S1_ToyRainbow /s
goto downloadcomplete

:northstar
MODE 120,50
Title Downloading North Star...
echo THIS version using CPlay^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
echo This version using After chanka update ^!
echo Nest Destruction event!
echo Y6S2_NorthStar ^=^> Y6S2_NestDestruction
if exist "Downloads\Y6S2_NorthStar" (
	echo Older version of North Star ^! Please delete it^!
	pause
)

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8733653062998518164 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S2_NestDestruction"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 809542866761090243 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S2_NestDestruction" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\CPlay Downloads\Y6S2_NestDestruction /s
goto downloadcomplete

:crystalguard
MODE 120,50
Title Downloading Crystal Guard...
echo THIS version using UPCR1^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 4859695099882698284 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S3_CrystalGuard"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 6526531850721822265 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S3_CrystalGuard" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\UPCR1 Downloads\Y6S3_CrystalGuard /s
goto downloadcomplete

:highcalibre
MODE 120,50
Title Downloading High Calibre..
echo THIS version using UPCR2_NEW^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
echo Y6S4_HighCalibre ^=^> Y6S4_Stadiums
if exist "Downloads\Y6S4_HighCalibre" (
	echo Older version of High Calibre ^! Please delete it^!
	pause
)
pause

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 2637055726475611418 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S4_Stadiums"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 8627214406801860013 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S4_Stadiums" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\UPCR2_NEW Downloads\Y6S4_Stadiums /s
goto downloadcomplete

:demonveil
MODE 120,50
Title Downloading Demon Veil...
echo THIS version using UPCR2_NEW^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8323869632165751287 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S1_TOKY"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 2178080523228113690 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S1_TOKY" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\UPCR2_NEW Downloads\Y7S1_TOKY /s
goto downloadcomplete

:vectorglare
MODE 120,50
Title Downloading Vector Glare...
echo THIS version using UPCR2_NEW^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 1363132201391540345 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S2_MuteReboot"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 133280937611742404 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S2_MuteReboot" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\UPCR2_NEW Downloads\Y7S2_MuteReboot /s
goto downloadcomplete

:brutalswarm
MODE 120,50
Title Downloading Brutal Swarm...
echo THIS version using UPCR2_NEW^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 6425223567680952075 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S3_DoctorSniper"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5906302942203575464 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S3_DoctorSniper" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\UPCR2_NEW Downloads\Y7S3_DoctorSniper /s
goto downloadcomplete

:solarraid
MODE 120,50
Title Downloading Solar Raid...
echo THIS version using Y8SX^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 4466027729495813039 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S4_SnowBrawl"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1819898955518120444 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S4_SnowBrawl" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\Y8SX Downloads\Y7S4_SnowBrawl /s
goto downloadcomplete

:commandingforce
MODE 120,50
Title Downloading Commanding Force ...
echo THIS version using Y8SX^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 3050554908913191669 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S1_ToyRainbow3"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1575870740329742681 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S1_ToyRainbow3" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\Y8SX Downloads\Y8S1_ToyRainbow3 /s
goto downloadcomplete


:dreadfactor
MODE 120,50
Title Downloading Dread Factor ...
echo THIS version using Y8SX^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 3558972082517836520 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S2_DreadFactor"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1575870740329742681 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S2_DreadFactor" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\Y8SX Downloads\Y8S2_DreadFactor /s
goto downloadcomplete

:heavymettle
MODE 120,50
Title Downloading Heavy Mettle ...
echo THIS version using Y8SX^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 2068160275622519212 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S3_HeavyMettle"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 3005637025719884427 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S3_HeavyMettle" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\Y8SX Downloads\Y8S3_HeavyMettle /s
goto downloadcomplete

:deepfreeze
MODE 120,50
Title Downloading Deep Freeze ...
echo THIS version using Y8SX^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 7646647065987620875 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S4_DeepFreeze"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 4957295777170965935 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S4_DeepFreeze" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\Y8SX Downloads\Y8S4_DeepFreeze /s
goto downloadcomplete

:deadlyomen
MODE 120,50
Title Downloading Deadly Omen ...
echo THIS version using Y8SX^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 1959067516419454682 -username %username% %usecommand% -remember-password -dir "Downloads\Y9S1_DeadlyOmen"  -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1140469899661941149 -username %username% %usecommand% -remember-password -dir "Downloads\Y9S1_DeadlyOmen" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\Y8SX Downloads\Y9S1_DeadlyOmen /s
goto downloadcomplete

:skurus
Title Sku RUS Download
cls
MODE 66,40
echo ------------------------------------------------------------------
echo ^| Click on the version of Siege you are downloading Sku RUS for. ^|
echo ^| 		You need to manually paste Crack for this ^!. 		^|
echo ------------------------------------------------------------------
echo.
Resources\cmdMenuSel f870 "  <- Back to Main Menu" "" "  Vanilla 1.0" "  Black Ice 2.0" "  Dust Line 3.0" "  Skull Rain 4.2" "  Red Crow 5.0" "  Velvet Shell 2.1.0" "  Health 2.2.0" "  Blood Orchid 2.3.1.1" "  White Noise 2.4.0" "  Chimera 3.1.0 (Outbreak)" "  Para Bellum 3.2.0" "  Grim Sky 3.3.2 (Mad House)" "  Wind Bastion 3.4.0" "  Burnt Horizon 4.1.0.2 (Rainbow Is Magic)" "  Phantom Sight 4.2.0 (Showdown)" "  Ember Rise 4.3.3.1 (Doktor's Curse/Money Heist)" "  Shifting Tides 4.4.0 (Stadium)" "  Void Edge 5.1.2 (The Grand Larceny/Golden Gun)" "  Steel Wave 5.2.3 (M.U.T.E. Protocol)" "  Shadow Legacy (Sugar Fright)"  "  Neon Dawn (Road To S.I. 2021) [No withstand]" "  Crimson Heist (Rainbow Is Magic 2 | Apocalypse)" "  North Star (Nest Destruction)" "  Crystal Guard (Showdown)" "  High Calibre" "  Demon Veil" "  Vector Glare (Mute Reboot)" "  Brutal Swarm (Doctors Sniper)" "  Solar Raid (Snow Brawl)" "  Commanding Force (RIM + TOKY)" "  Dread Factor (Rengoku V2)" "  Heavy Mettle (Doktors Curse)" "  Deep Freeze (Y8S4)" "  Deadly Omen (Y9S1)"
echo.
if %ERRORLEVEL% == 1 goto mainmenu
if %ERRORLEVEL% == 2 goto skurus
set /p username="Enter Steam Username:"
if %ERRORLEVEL% == 3 goto rusvanilla
if %ERRORLEVEL% == 4 goto rusblackice
if %ERRORLEVEL% == 5 goto rusdustline
if %ERRORLEVEL% == 6 goto russkullrain
if %ERRORLEVEL% == 7 goto rusredcrow
if %ERRORLEVEL% == 8 goto rusvelvetshell
if %ERRORLEVEL% == 9 goto rushealth
if %ERRORLEVEL% == 10 goto rusbloodorchid
if %ERRORLEVEL% == 11 goto ruswhitenoise
if %ERRORLEVEL% == 12 goto ruschimera
if %ERRORLEVEL% == 13 goto rusparabellum
if %ERRORLEVEL% == 14 goto rusgrimsky
if %ERRORLEVEL% == 15 goto ruswindbastion
if %ERRORLEVEL% == 16 goto rusburnthorizon
if %ERRORLEVEL% == 17 goto rusphantomsight
if %ERRORLEVEL% == 18 goto rusemberrise
if %ERRORLEVEL% == 19 goto russhiftingtides
if %ERRORLEVEL% == 20 goto rusvoidedge
if %ERRORLEVEL% == 21 goto russteelwave
if %ERRORLEVEL% == 22 goto russhadowlegacy
if %ERRORLEVEL% == 23 goto rusneondawn
if %ERRORLEVEL% == 24 goto ruscrimsonheist
if %ERRORLEVEL% == 25 goto rusnorthstar
if %ERRORLEVEL% == 26 goto ruscrystalguard
if %ERRORLEVEL% == 27 goto rushighcalibre
if %ERRORLEVEL% == 28 goto rusdemonveil
if %ERRORLEVEL% == 29 goto rusvectorglare
if %ERRORLEVEL% == 30 goto rusbrutalswarm
if %ERRORLEVEL% == 31 goto russolarraid
if %ERRORLEVEL% == 32 goto ruscommandingforce
if %ERRORLEVEL% == 33 goto rusdreadfactor
if %ERRORLEVEL% == 34 goto rusheavymettle
if %ERRORLEVEL% == 35 goto rusdeepfreeze
if %ERRORLEVEL% == 36 goto rusdeadlyomen
:rusvanilla
MODE 120,50
Title Downloading Sku RUS For Vanilla...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 6835384933146381100 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusblackice
MODE 120,50
Title Downloading Sku RUS For Black Ice...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 5362991837480196824 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusdustline
MODE 120,50
Title Downloading Sku RUS For Dust Line...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3040224537841664111 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:russkullrain
MODE 120,50
Title Downloading Sku RUS For Skull Rain...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 2956768406107766016 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusredcrow
MODE 120,50
Title Downloading Sku RUS For Red Crow...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 912564683190696342 -username %username% %usecommand% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusvelvetshell
MODE 120,50
Title Downloading Sku RUS For Velvet Shell...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 2687181326074258760 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rushealth
MODE 120,50
Title Downloading Sku RUS For Health...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 8542242518901049325 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusbloodorchid
MODE 120,50
Title Downloading Sku RUS For Blood Orchid...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 4662662335520989204 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:ruswhitenoise
MODE 120,50
Title Downloading Sku RUS For White Noise...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 8421028160473337894 -username %username% %usecommand% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:ruschimera
MODE 120,50
Title Downloading Sku RUS For Chimera...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 4768963659370299631 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusparabellum
MODE 120,50
Title Downloading Sku RUS For Para Bellum...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 7995779530685147208 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusgrimsky
MODE 120,50
Title Downloading Sku RUS For Grim Sky...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3144556314994867170 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:ruswindbastion
MODE 120,50
Title Downloading Sku RUS For Wind Bastion...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3144556314994867170 -username %username% %usecommand% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusburnthorizon
MODE 120,50
Title Downloading Sku RUS For Burnt Horizon...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3777349673527123995 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusphantomsight
MODE 120,50
Title Downloading Sku RUS For Phantom Sight...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3326664059403997209 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusemberrise
MODE 120,50
Title Downloading Sku RUS For Ember Rise...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 684480090862996679 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:russhiftingtides
MODE 120,50
Title Downloading Sku RUS For Shifting Tides...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 510172308722680354 -username %username% %usecommand% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusvoidedge
MODE 120,50
Title Downloading Sku RUS For Void Edge...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 2583838033617047180 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:russteelwave
MODE 120,50
Title Downloading Sku RUS For Steel Wave...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 5838065097101371940 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:russhadowlegacy
MODE 120,50
Title Downloading Sku RUS For Shadow Legacy...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 4020038723910014041 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S3_ShadowLegacy" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:neondawn
MODE 120,50
Title Downloading Sku RUS For Neon Dawn...

dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3560446343418579092 -username %username% %usecommand% -remember-password -dir "Downloads\Y5S4_RoadToSI_AW" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:crimsonheist
MODE 120,50
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 6130917224459224462 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S1_ToyRainbow" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:northstar
MODE 120,50
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 6767916709017546201 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S2_NestDestruction" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:ruscrystalguard
MODE 120,50
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 5161489294178683219 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S3_CrystalGuard" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rushighcalibre
MODE 120,50
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 2074678920289758165 -username %username% %usecommand% -remember-password -dir "Downloads\Y6S4_Stadiums" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusdemonveil
MODE 120,50
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 1970003626423861715 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S1_TOKY" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusvectorglare
MODE 120,50
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 4500117484519539380 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S2_MuteReboot" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusbrutalswarm
MODE 120,50
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 4623590620762156001 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S3_DoctorSniper" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:russolarraid
MODE 120,50
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 5107849703917033235 -username %username% %usecommand% -remember-password -dir "Downloads\Y7S4_SnowBrawl" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:ruscommandingforce
MODE 120,50
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 4293396692730784956 -username %username% %usecommand% -remember-password -dir "Downloads\ToyRainbow3" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
goto downloadcomplete

:rusdreadfactor
MODE 120,50
Title Downloading Dread Factor ...
echo THIS version using Y8SX^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 4977529482832011357 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S2_DreadFactor" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\Y8SX Downloads\Y8S2_DreadFactor /s
goto downloadcomplete

:rusheavymettle
MODE 120,50
Title Downloading Heavy Mettle ...
echo THIS version using Y8SX^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 2579928666708989224 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S3_HeavyMettle" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\Y8SX Downloads\Y8S3_HeavyMettle /s
goto downloadcomplete

:rusdeepfreeze
MODE 120,50
Title Downloading Deep Freeze ...
echo THIS version using Y8SX^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 8339919149418587132 -username %username% %usecommand% -remember-password -dir "Downloads\Y8S4_DeepFreeze" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\Y8SX Downloads\Y8S4_DeepFreeze /s
goto downloadcomplete

:rusdeadlyomen
MODE 120,50
Title Downloading Deadly Omen ...
echo THIS version using Y8SX^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 1619182300337183882 -username %username% %usecommand% -remember-password -dir "Downloads\Y9S1_DeadlyOmen" -validate -max-servers %maxservers_and_downloads% -max-downloads %maxservers_and_downloads%
pause
Robocopy Resources\Plazas\Y8SX Downloads\Y9S1_DeadlyOmen /s
goto downloadcomplete


:downloadcomplete
MODE 70,6
Title Download Complete
cls
echo ----------------------------------------------------------------------
echo ^|                         Download Complete!                         ^|
echo ----------------------------------------------------------------------
echo.
Resources\cmdMenuSel f870 "                               Continue"
echo.
echo.
if %ERRORLEVEL% == 1 goto mainmenu





:guidefaq
Title Installation Guide and FAQ
cls
MODE 41,10
echo -----------------------------------------
echo ^| Click on what you would like to read. ^|
echo -----------------------------------------
echo.
Resources\cmdMenuSel f870 "  <- Back to Main Menu" "" "  Installation Guide" "  FAQ"
if %ERRORLEVEL% == 1 goto mainmenu
if %ERRORLEVEL% == 2 goto guidefaq
if %ERRORLEVEL% == 3 goto guide
if %ERRORLEVEL% == 4 goto faq



:guide
Title Installation Guide
cls
MODE 134,17
echo --------------------------------------------------------------------------------------------------------------------------------------
echo ^| 1) In the main menu of the downloader, select 'Game Downloader' and choose which version you want to download.                     ^|
echo ^|    Enter the username and password for the Steam account you have a copy of Rainbow Six Siege on. The download should start.       ^|
echo ^|   (If you want to download 4K textures or extra languages, follow the same steps,                                                  ^|
echo ^|    and you can enable 4K textures / select different languages in-game).                                                           ^|
echo ^|                                                                                                                                    ^|
echo ^| 2) Once you have that done just launch the game by double-clicking RainbowSix.exe in the 'Downloads' folder where the downloader   ^|
echo ^|    is located. If the RainbowSixGame.exe exist start that ^!                                                                        ^|
echo ^|                                                                                                                                    ^|
echo ^| 3) Please DONT Use this Tool on your OneDrive! You will probably get errors! Also, dont run the tool inside of any ZIP viewer      ^|
echo ^|                                                                                                                                    ^|
echo --------------------------------------------------------------------------------------------------------------------------------------
echo ^| Note : To play with other people, download Radmin Server at https://radmin-vpn.com/ then create or join a private network.         ^|
echo ^| Then create or join a local custom game and wait for other people to join.                                                         ^|
echo --------------------------------------------------------------------------------------------------------------------------------------
echo.
Resources\cmdMenuSel f870 "  <- Back to Guide and FAQ"
if %ERRORLEVEL% == 1 goto guidefaq



:faq
Title FAQ
cls
Mode 137,36
echo -----------------------------------------------------------------------------------------------------------------------------------------
echo ^|   Q: Is it safe to enter my password?                                                                                                 ^|
echo ^| # A: Yes it is. You can view the source code for Depot Downloader here: https://github.com/SteamRE/DepotDownloader/                   ^|
echo ^|                                                                                                                                       ^|
echo ^|   Q: Why do I get 'Invalid Password' after entering my Steam credentials?                                                             ^|
echo ^| # A: You are supposed to enter your LEGACY Steam username, not your profile name (the username you normally use to login to Steam)    ^|
echo ^|                                                                                                                                       ^|
echo ^|   Q: Why does it say 'Download Complete' immediately after entering a download option?                                                ^|
echo ^| # A: You need to download .NET Core from the #game-downloads in the Operation Throwback Discord server before you run the downloader  ^|
echo ^|                                                                                                                                       ^|
echo ^|   Q: Why can't I see my password while I'm typing?                                                                                    ^|
echo ^| # A: Your password is being entered as invisible                                                                                      ^|
echo ^|                                                                                                                                       ^|
echo ^|   Q: Where can I change my name?                                                                                                      ^|
echo ^| # A: In the Codex.ini file line 28 "UserName=CODEX"                                                                                   ^|
echo ^|                                                                                                                                       ^|
echo ^|   Q: Why is my game crashing at the start screen?                                                                                     ^|
echo ^| # A: In the Codex.ini file line 20 "GameName=RainbowSixSiege" change it to something else                                             ^|
echo ^|                                                                                                                                       ^|
echo ^|   Q: Why am I getting "Encountered unexpected error downloading chunk xxxxxxxxxxxx: The operation was canceled." errors?              ^|
echo ^| # A: Getting errors while downloading is normal                                                                                       ^|
echo ^|                                                                                                                                       ^|
echo ^|   Q: Why am I getting the error 'Missing steam_api64.dll'                                                                             ^|
echo ^| # A: Blacklist the files in your antivirus so the crack files aren't deleted                                                          ^|
echo ^|                                                                                                                                       ^|
echo ^|   Q: Why does the steam version of the game launch when I try to run RainbowSix.exe?                                                  ^|
echo ^| # A: Same answer as above                                                                                                             ^|
echo ^|                                                                                                                                       ^|
echo ^|   Q: Why is my download stuck at X percent?                                                                                           ^|
echo ^| # A: The last few files in a build are larger than the rest and may take longer to download, please be patient.                       ^|
echo ^|      Best way to tell if it's still working is to check if it's using your network in task manager.                                   ^|
echo -----------------------------------------------------------------------------------------------------------------------------------------
echo                        Any CPlay / UPCR1/2 / Lumaplay error/fail , please contact SlejmUr or other helpers!
echo.
Resources\cmdMenuSel f870 "  <- Back to Guide and FAQ"
if %ERRORLEVEL% == 1 goto guidefaq
@shift /0
@echo off
setlocal enableextensions



Color 0F




::Credit to SlejmUr#4007 for the .NET checker
:dotnetcheck
Title Downloading .NET Core SDK...
MODE 67,5
if exist "C:\Program Files\dotnet\dotnet.exe" (
goto 7zipcheck
) else (
  start https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-5.0.400-windows-x64-installer
  cls
  echo Please run the .NET Core SDK installer and restart the downloader.
  echo.
  pause
  )
exit


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
    curl -L  "https://github.com/DataCluster0/R6TBBatchTool/raw/master/Requirements/7z.exe" --output 7z.exe
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
    curl -L  "https://github.com/SteamRE/DepotDownloader/releases/download/DepotDownloader_2.4.4/depotdownloader-2.4.4.zip" --output depot.zip
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
    curl -L  "https://slejmur.keybase.pub/Plazas.zip?dl=1" --output plazas.zip
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
    curl -L  "https://github.com/SlejmUr/R6-AIOTool-Batch/raw/master/Requirements/cmdmenusel.exe" --output cmdmenusel.exe
    move cmdmenusel.exe Resources
    goto cmdCheck
::End get shit





:foridiots
Title Rainbow Six Siege Downloader
cls
MODE 87,8
echo [1m[101mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3 If you come across a problem/issue, or have a question,                             3
echo 3 PLEASE read the FAQ and Guide section before asking for help in our discord server. 3
echo 3 Your problem can most likely be resolved by reading the FAQ and Guide.              3
echo AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU[0m
echo.
Resources\cmdMenuSel f870 "                                    Continue"
if %ERRORLEVEL% == 1 goto mainmenu



:mainmenu
Title Rainbow Six Siege Downloader
cls
MODE 81,18
echo [1mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3 Rainbow Six Siege Downloader 3 Join the modding community: discord.gg/26qrqed 3
echo 3ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ3[0m
echo [1m3[0m         [7mYou MUST have a copy of Siege on Steam to use the downloader.[0m         [1m3[0m
echo [1mAÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU[0m
echo [1mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3                Click on the option you would like to select.                  3
echo 3ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ3
echo 3   NOTE: The Sku RUS Downloader is meant for people with missing exe files.    3
echo AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU[0m
echo.
Resources\cmdMenuSel f870 "  Game Downloader" "  4K Textures Downloader" "  Extra Languages Downloader" "  Sku RUS Downloader" "  Installation Guide and FAQ"
if %ERRORLEVEL% == 1 goto siegemenu
if %ERRORLEVEL% == 2 goto 4kTextures
if %ERRORLEVEL% == 3 goto extralocalization
if %ERRORLEVEL% == 4 goto skurus
if %ERRORLEVEL% == 5 goto guidefaq



:siegemenu
Title Game Download
cls
MODE 73,32
echo [1mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3 Click on the version of Rainbow Six Siege you would like to download. 3
echo AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU[0m
echo.
Resources\cmdMenuSel f870 "  <- Back to Main Menu" "" "  Vanilla 1.0 | 14.2 GB" "  Black Ice 2.0 | 16.7 GB" "  Dust Line 3.0 | 20.9 GB" "  Skull Rain 4.2 | 25.1 GB" "  Red Crow 5.0 | 28.5 GB" "  Velvet Shell 2.1.0 | 33.2 GB" "  Health 2.2.0 | 34 GB" "  Blood Orchid 2.3.1.1 | 34.3 GB" "  White Noise 2.4.0 | 48.7 GB" "  Chimera 3.1.0 (Outbreak) | 58.8 GB" "  Para Bellum 3.2.0 | 63.3 GB" "  Grim Sky 3.3.2 (Mad House) | 72.6 GB" "  Wind Bastion 3.4.0 | 76.9 GB" "  Burnt Horizon 4.1.0.2 (Rainbow Is Magic) | 59.7 GB" "  Phantom Sight 4.2.0 (Showdown) | 67.1 GB" "  Ember Rise 4.3.3.1 (Doktor's Curse/Money Heist) | 69.6 GB" "  Shifting Tides 4.4.0 (Stadium) | 75.2 GB" "  Void Edge 5.1.2 (The Grand Larceny/Golden Gun) | 74.3 GB" "  Steel Wave 5.2.3 (M.U.T.E. Protocol) | 81.3 GB" "  Shadow Legacy (Sugar Fright)" "  Neon Dawn (Road To S.I. 2021) [No withstand]" "  Crimson Heist (Rainbow Is Magic 2 | Apocalypse)" "  North Star (Nest Destruction)" "  Crystal Guard (Showdown)"
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

                                     
:vanilla
MODE 120,20
Title Downloading Vanilla...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8358812283631269928 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 3893422760579204530 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_BO Downloads\Y1S0_Vanilla
goto downloadcomplete

:blackice
MODE 120,20
Title Downloading Black Ice...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5188997148801516344 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 7932785808040895147 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_BO Downloads\Y1S1_BlackIce
goto downloadcomplete

:dustline
MODE 120,20
Title Downloading Dust Line...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 2303064029242396590 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 2206497318678061176 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_BO Downloads\Y1S2_DustLine
goto downloadcomplete

:skullrain
MODE 120,20
Title Downloading Skull Rain...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5819137024728546741 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5851804596427790505 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_BO Downloads\Y1S3_SkullRain
goto downloadcomplete

:redcrow
MODE 120,20
Title Downloading Red Crow...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 3576607363557872807 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 8569920171217002292 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_BO Downloads\Y1S4_RedCrow
goto downloadcomplete

:velvetshell
MODE 120,20
Title Downloading Velvet Shell...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 2248734317261478192 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 8006071763917433748 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y2S1_VelvetShell
goto downloadcomplete

:health
MODE 120,20
Title Downloading Health...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5875987479498297665 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 708773000306432190 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y2S2_Health
goto downloadcomplete

:bloodorchid
MODE 120,20
Title Downloading Blood Orchid...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 6708129824495912434 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1613631671988840841 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y2S3_BloodOrchid
goto downloadcomplete

:whitenoise
MODE 120,20
Title Downloading White Noise...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8748734086032257441 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 4221297486420648079 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y2S4_WhiteNoise
goto downloadcomplete

:chimera
MODE 120,20
Title Downloading Chimera...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5071357104726974256 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 4701787239566783972 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y3S1_Chimera
goto downloadcomplete

:parabellum
MODE 120,20
Title Downloading Para Bellum...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 6507886921175556869 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 8765715607275074515 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y3S2_ParaBellum
goto downloadcomplete

:grimsky
MODE 120,20
Title Downloading Grim Sky...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5562094852451837435 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 7781202564071310413 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y3S3_GrimSky
goto downloadcomplete

:windbastion
MODE 120,20
Title Downloading Wind Bastion...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 6502258854032233436 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 7659555540733025386 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y3S4_WindBastion
goto downloadcomplete

:burnthorizon
MODE 120,20
Title Downloading Burnt Horizon...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8356277316976403078 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5935578581006804383 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y4S1_BurntHorizon
goto downloadcomplete

:phantomsight
MODE 120,20
Title Downloading Phantom Sight...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 693082837425613508 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5408324128694463720 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y4S2_PhantomSight
goto downloadcomplete

:emberrise
MODE 120,20
Title Downloading Ember Rise...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 3546781236735558235 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 7869081741739849703 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y4S3_EmberRise
goto downloadcomplete

:shiftingtides
MODE 120,20
Title Downloading Shifting Tides...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 299124516841461614 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1842268638395240106 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y4S4_ShiftingTides
goto downloadcomplete

:voidedge
MODE 120,20
Title Downloading Void Edge...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 4736360397583523381 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 6296533808765702678 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y5S1_VoidEdge
goto downloadcomplete

:steelwave
MODE 120,20
Title Downloading Steel Wave...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 4367817844736324940 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 893971391196952070 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\PLAZA_NEW Downloads\Y5S2_SteelWave
goto downloadcomplete

:shadowlegacy
MODE 120,20
Title Downloading Shadow Legacy...
echo THIS version using Lumaplay^!
echo Make sure you starting Lumaplay.exe not the normal RainbowSix.exe^!
echo This version using After chanka update ^!
pause
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 85893637567200342 -username %username% -remember-password -dir "Downloads\Y5S3_ShadowLegacy"  -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 3089981610366186823 -username %username% -remember-password -dir "Downloads\Y5S3_ShadowLegacy" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\LumaPlay Downloads\Y5S3_ShadowLegacy /s
goto downloadcomplete

:neondawn
MODE 120,20
Title Downloading Neon Dawn...
echo THIS version using CPlay^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
echo This version using After zofia update ^!
pause
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 4713320084981112320 -username %username% -remember-password -dir "Downloads\Y5S4_RoadToSI_AW"  -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 3711873929777458413 -username %username% -remember-password -dir "Downloads\Y5S4_RoadToSI_AW" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\CPlay Downloads\Y5S4_RoadToSI_AW /s
goto downloadcomplete

:crimsonheist
MODE 120,20
Title Downloading Crimson Heist...
echo THIS version using CPlay^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 7890853311380514304 -username %username% -remember-password -dir "Downloads\Y6S1_ToyRainbow"  -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 7485515457663576274 -username %username% -remember-password -dir "Downloads\Y6S1_ToyRainbow" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\CPlay Downloads\Y6S1_ToyRainbow /s
goto downloadcomplete

:northstar
MODE 120,20
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
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8733653062998518164 -username %username% -remember-password -dir "Downloads\Y6S2_NestDestruction"  -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 809542866761090243 -username %username% -remember-password -dir "Downloads\Y6S2_NestDestruction" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\CPlay Downloads\Y6S2_NestDestruction /s
goto downloadcomplete

:crystalguard
MODE 120,20
Title Downloading Crystal Guard...
echo THIS version using UPCR1^!
echo Make sure you starting RainbowSix.bat not the normal RainbowSix.exe^!
pause
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377237 -manifest 4859695099882698284 -username %username% -remember-password -dir "Downloads\Y6S3_CrystalGuard"  -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359551 -manifest 6526531850721822265 -username %username% -remember-password -dir "Downloads\Y6S3_CrystalGuard" -validate -max-servers 15 -max-downloads 10 [0m
pause
Robocopy Resources\Plazas\UPCR1 Downloads\Y6S3_CrystalGuard /s
goto downloadcomplete

:4kTextures
Title 4K Textures Download
cls
MODE 70,27
echo [1mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3 Click on the version of Siege you are downloading 4K textures for. 3
echo AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU[0m
echo.
Resources\cmdMenuSel f870 "  <- Back to Main Menu" "" "  Vanilla 1.0 | 8.3 GB" "  Black Ice 2.0 | 12.4 GB" "  Dust Line 3.0 | 17.5 GB" "  Skull Rain 4.2 | 24.6 GB" "  Red Crow 5.0 | 32.8 GB" "  Velvet Shell 2.1.0 | 42.6 GB" "  Health 2.2.0 | 43.9 GB" "  Blood Orchid 2.3.1.1 | 16.2 GB" "  White Noise 2.4.0 | 24.3 GB" "  Chimera 3.1.0 (Outbreak) | 27.9 GB" "  Para Bellum 3.2.0 | 29.1 GB" "  Grim Sky 3.3.2 (Mad House) | 33.5 GB" "  Wind Bastion 3.4.0 | 35.3 GB" "  Burnt Horizon 4.1.0.2 (Rainbow Is Magic) | 28.9 GB" "  Phantom Sight 4.2.0 (Showdown) | 31 GB" "  Ember Rise 4.3.3.1 (Doktor's Curse/Money Heist) | 32.9 GB" "  Shifting Tides 4.4.0 (Stadium) | 35.8 GB" "  Void Edge 5.1.2 (The Grand Larceny/Golden Gun) | 35.6 GB" "  Steel Wave 5.2.3 (M.U.T.E. Protocol) | 39.1 GB"
echo.
if %ERRORLEVEL% == 1 goto mainmenu
if %ERRORLEVEL% == 2 goto 4kTextures
set /p username="Enter Steam Username:"
if %ERRORLEVEL% == 3 goto 4kvanilla
if %ERRORLEVEL% == 4 goto 4kblackice
if %ERRORLEVEL% == 5 goto 4kdustline
if %ERRORLEVEL% == 6 goto 4kskullrain
if %ERRORLEVEL% == 7 goto 4kredcrow
if %ERRORLEVEL% == 8 goto 4kvelvetshell
if %ERRORLEVEL% == 9 goto 4khealth
if %ERRORLEVEL% == 10 goto 4kbloodorchid
if %ERRORLEVEL% == 11 goto 4kwhitenoise
if %ERRORLEVEL% == 12 goto 4kchimera
if %ERRORLEVEL% == 13 goto 4kparabellum
if %ERRORLEVEL% == 14 goto 4kgrimsky
if %ERRORLEVEL% == 15 goto 4kwindbastion
if %ERRORLEVEL% == 16 goto 4kburnthorizon
if %ERRORLEVEL% == 17 goto 4kphantomsight
if %ERRORLEVEL% == 18 goto 4kemberrise
if %ERRORLEVEL% == 19 goto 4kshiftingtides
if %ERRORLEVEL% == 20 goto 4kvoidedge
if %ERRORLEVEL% == 21 goto 4ksteelwave



:4kvanilla
MODE 120,20
Title Downloading 4K Textures For Vanilla...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 8394183851197739981 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kblackice
MODE 120,20
Title Downloading 4K Textures For Black Ice...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 3756048967966286899 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kdustline
MODE 120,20
Title Downloading 4K Textures For Dust Line...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 1338949402410764888 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kskullrain
MODE 120,20
Title Downloading 4K Textures For Skull Rain...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 3267970968757091405 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kredcrow
MODE 120,20
Title Downloading 4K Textures For Red Crow...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 1825939060444887403 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kvelvetshell
MODE 120,20
Title Downloading 4K Textures For Velvet Shell...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 3196596628759979362 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10 [0m
goto downloadcomplete

:4khealth
MODE 120,20
Title Downloading 4K Textures For Health...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 7497579858536910279 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kbloodorchid
MODE 120,20
Title Downloading 4K Textures For Blood Orchid...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 6420469519659049757 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kwhitenoise
MODE 120,20
Title Downloading 4K Textures For White Noise...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 1118649577165385479 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kchimera
MODE 120,20
Title Downloading 4K Textures For Chimera...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 1668513364192382097 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kparabellum
MODE 120,20
Title Downloading 4K Textures For Para Bellum...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 204186978012641075 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kgrimsky
MODE 120,20
Title Downloading 4K Textures For Grim Sky...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 6431001239225997495 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kwindbastion
MODE 120,20
Title Downloading 4K Textures For Wind Bastion...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 2243348760021617592 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kburnthorizon
MODE 120,20
Title Downloading 4K Textures For Burnt Horizon...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 3462709886432904855 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kphantomsight
MODE 120,20
Title Downloading 4K Textures For Phantom Sight...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 4107080515154236795 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kemberrise
MODE 120,20
Title Downloading 4K Textures For Ember Rise...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 8340682081776225833 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kshiftingtides
MODE 120,20
Title Downloading 4K Textures For Shifting Tides...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 6048763664997452513 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4kvoidedge
MODE 120,20
Title Downloading 4K Textures For Void Edge...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 2194493692563107142 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:4ksteelwave
MODE 120,20
Title Downloading 4K Textures For Steel Wave...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377239 -manifest 3257522596542046976 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete





:extralocalization
Title Extra Languages Download
cls
MODE 74,27
echo [1mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3 Click on the version of Siege you are downloading extra languages for. 3
echo AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU[0m
echo.
Resources\cmdMenuSel f870 "  <- Back to Main Menu" "" "  Vanilla 1.0 | 4.3 GB" "  Black Ice 2.0 | 4.9 GB" "  Dust Line 3.0 | 5.4 GB" "  Skull Rain 4.2 | 6.2 GB" "  Red Crow 5.0 | 6.9 GB" "  Velvet Shell 2.1.0 | 7.6 GB" "  Health 2.2.0 | 7.6 GB" "  Blood Orchid 2.3.1.1 | 8.8 GB" "  White Noise 2.4.0 | 8.5 GB" "  Chimera 3.1.0 (Outbreak) | 12.4 GB" "  Para Bellum 3.2.0 | 12.6 GB" "  Grim Sky 3.3.2 (Mad House) | 13.2 GB" "  Wind Bastion 3.4.0 | 13.6 GB" "  Burnt Horizon 4.1.0.2 (Rainbow Is Magic) | 8.1 GB" "  Phantom Sight 4.2.0 (Showdown) | 9.3 GB" "  Ember Rise 4.3.3.1 (Doktor's Curse/Money Heist) | 9.4 GB" "  Shifting Tides 4.4.0 (Stadium) | 9.8 GB" "  Void Edge 5.1.2 (The Grand Larceny/Golden Gun) | 9 GB" "  Steel Wave 5.2.3 (M.U.T.E. Protocol) | 9.2 GB"
echo.
if %ERRORLEVEL% == 1 goto mainmenu
if %ERRORLEVEL% == 2 goto extralocalization
set /p username="Enter Steam Username:"
if %ERRORLEVEL% == 3 goto elvanilla
if %ERRORLEVEL% == 4 goto elblackice
if %ERRORLEVEL% == 5 goto eldustline
if %ERRORLEVEL% == 6 goto elskullrain
if %ERRORLEVEL% == 7 goto elredcrow
if %ERRORLEVEL% == 8 goto elvelvetshell
if %ERRORLEVEL% == 9 goto elhealth
if %ERRORLEVEL% == 10 goto elbloodorchid
if %ERRORLEVEL% == 11 goto elwhitenoise
if %ERRORLEVEL% == 12 goto elchimera
if %ERRORLEVEL% == 13 goto elparabellum
if %ERRORLEVEL% == 14 goto elgrimsky
if %ERRORLEVEL% == 15 goto elwindbastion
if %ERRORLEVEL% == 16 goto elburnthorizon
if %ERRORLEVEL% == 17 goto elphantomsight
if %ERRORLEVEL% == 18 goto elemberrise
if %ERRORLEVEL% == 19 goto elshiftingtides
if %ERRORLEVEL% == 20 goto elvoidedge
if %ERRORLEVEL% == 21 goto elsteelwave



:elvanilla
MODE 120,20
Title Downloading Extra Languages For Vanilla...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359552 -manifest 8272333750181260955 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 940838089858119714 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 7179158265062294015 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 3953006809848583127 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 6248979332984503061 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 4246528818872796970 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359558 -manifest 3650448467998593870 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377230 -manifest 434053950562761763 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377231 -manifest 961787742874674106 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377232 -manifest 4666462401429503167 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377233 -manifest 8123484057310613369 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377234 -manifest 7408437752633543455 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 3426628477659109421 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 4326401341058506434 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elblackice
MODE 120,20
Title Downloading Extra Languages For Black Ice...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359552 -manifest 2712275910147518853 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 3933270230638281254 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 5760263381471720373 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 7470955591961528063 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 6534545487175120142 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 5712713603408405370 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359558 -manifest 611380037218554981 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377230 -manifest 2252756710796870124 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377231 -manifest 9083464997167398804 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377232 -manifest 1679233699688952842 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377233 -manifest 6415534268030477043 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377234 -manifest 695733873875406938 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 7819798899236214261 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 7163789544030656935 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:eldustline
MODE 120,20
Title Downloading Extra Languages For Dust Line...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359552 -manifest 4408391562013624894 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 8417670786870682154 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 2551476087873566284 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 781358903497748263 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 8080893511664284255 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 7093312220135270425 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359558 -manifest 3858352830712224800 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377230 -manifest 792523120148938529 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377231 -manifest 5042288075851140032 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377232 -manifest 3857270863114730703 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377233 -manifest 1924001092871695610 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377234 -manifest 336078500685842996 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 7164006373234658729 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 4405345682991436059 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elskullrain
MODE 120,20
Title Downloading Extra Languages For Skull Rain...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359552 -manifest 5936426082516413629 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 5132022816747475711 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 1819965373025810009 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 1926652807113950777 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 3102063947541599011 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 1002387473375422601 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359558 -manifest 2324023684915670753 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377230 -manifest 6519643449965700176 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377231 -manifest 2274850673348857246 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377232 -manifest 3010562235525323962 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377233 -manifest 4953478873615251033 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377234 -manifest 6056122284734366189 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 4940468394032132183 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 792795160700208918 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elredcrow
MODE 120,20
Title Downloading Extra Languages For Red Crow...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 6096643115970852289 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 8822593964618949966 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 7995072742170754868 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 3745420316643316529 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 9177769359376990903 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 8573459241975382853 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elvelvetshell
MODE 120,20
Title Downloading Extra Languages For Velvet Shell...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 5858637819174796390 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 1442016899353884599 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 7391813408396935946 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 4034802727985013756 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 8373797984073491957 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 4595160401957962156 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elhealth
MODE 120,20
Title Downloading Extra Languages For Health...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 5499656844751782586 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 4814130789498386116 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 4850286352511597480 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 7743695641492470240 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 740877577181398044 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 6208821339116662917 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elbloodorchid
MODE 120,20
Title Downloading Extra Languages For Blood Orchid...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 790907662127860380 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 3928776659583035772 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 7173152983008794231 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 7768315116657553428 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 4018202152273389175 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 1573647791032056620 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elwhitenoise
MODE 120,20
Title Downloading Extra Languages For White Noise...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 2934184792636281942 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 6120111820088733265 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 1122657510721658234 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 7877024295509467816 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 7662200840621314199 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 7662200840621314199 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elchimera
MODE 120,20
Title Downloading Extra Languages For Chimera...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 6830763708591031513 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 8951270584274959688 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 365667853833643908 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 723936785330189072 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 4967060442376701942 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 8184994692095456862 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 5994322749665877802 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elparabellum
MODE 120,20
Title Downloading Extra Languages For Para Bellum...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 2228609364372112585 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 3765579578277178198 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 436165049364805671 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 3396331896624899011 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 7222426493426609376 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 5702757960843346114 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 1607809513640548526 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elgrimsky
MODE 120,20
Title Downloading Extra Languages For Grim Sky...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 3063945558350557421 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 8817435015508321947 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 6254711869946987864 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 2769168610408745300 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 1079437953122108725 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 971478325336602905 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 3013637849914826120 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elwindbastion
MODE 120,20
Title Downloading Extra Languages For Wind Bastion...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 700171152841929114 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 6317337128494587862 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 6357970357791494519 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 1310832078295252288 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 6212948834557799675 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 8026527283762710847 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 8306800552570152557 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elburnthorizon
MODE 120,20
Title Downloading Extra Languages For Burnt Horizon...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 2489165098014835664 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 5912470135426316642 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 6166102473910342218 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 8980928302668128431 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 5742909617569886590 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 6205462284383635854 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 5305534200661405563 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elphantomsight
MODE 120,20
Title Downloading Extra Languages For Phantom Sight...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 8209966773310799535 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 5551310338808720316 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 2945239480726569964 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 3119251800260595817 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 2060894578496472402 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 735237222551525964 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 8063779007427415388 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elemberrise
MODE 120,20
Title Downloading Extra Languages For Ember Rise...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 9167311800727871226 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 9032788833180559255 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 5892684040914151033 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 3299372491475509511 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 8187109316671389619 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 8453132699861289149 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 4195459193643803058 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elshiftingtides
MODE 120,20
Title Downloading Extra Languages For Shifting Tides...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 982226827055842157 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 7669952636769439421 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 1771833119782386213 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 5607986007728468442 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 3980031497374187833 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 4121849146546499241 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 2337212093593824035 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elvoidedge
MODE 120,20
Title Downloading Extra Languages For Void Edge...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 6351511531186309516 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 2083562978649529043 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 4220186838055347645 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 8280780297583800068 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 1408940456585952484 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 6728091120574045367 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 3817096039931934373 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:elsteelwave
MODE 120,20
Title Downloading Extra Languages For Steel Wave...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359553 -manifest 379201990182673961 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359554 -manifest 7015749936618767871 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359555 -manifest 9103781936104145156 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359556 -manifest 3323378213398656976 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 359557 -manifest 3124010063296699270 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377235 -manifest 5460615762069731497 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377236 -manifest 3790966697198053253 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete





:skurus
Title Sku RUS Download
cls
MODE 66,30
echo [1mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3 Click on the version of Siege you are downloading Sku RUS for. 3
echo AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU[0m
echo.
Resources\cmdMenuSel f870 "  <- Back to Main Menu" "" "  Vanilla 1.0" "  Black Ice 2.0" "  Dust Line 3.0" "  Skull Rain 4.2" "  Red Crow 5.0" "  Velvet Shell 2.1.0" "  Health 2.2.0" "  Blood Orchid 2.3.1.1" "  White Noise 2.4.0" "  Chimera 3.1.0 (Outbreak)" "  Para Bellum 3.2.0" "  Grim Sky 3.3.2 (Mad House)" "  Wind Bastion 3.4.0" "  Burnt Horizon 4.1.0.2 (Rainbow Is Magic)" "  Phantom Sight 4.2.0 (Showdown)" "  Ember Rise 4.3.3.1 (Doktor's Curse/Money Heist)" "  Shifting Tides 4.4.0 (Stadium)" "  Void Edge 5.1.2 (The Grand Larceny/Golden Gun)" "  Steel Wave 5.2.3 (M.U.T.E. Protocol)" "  Shadow Legacy (Sugar Fright)"  "  Neon Dawn (Road To S.I. 2021) [No withstand]" "  Crimson Heist (Rainbow Is Magic 2 | Apocalypse)" "  North Star (Nest Destruction)" "  Crystal Guard (Showdown)"
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

:rusvanilla
MODE 120,20
Title Downloading Sku RUS For Vanilla...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 6835384933146381100 -username %username% -remember-password -dir "Downloads\Y1S0_Vanilla" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusblackice
MODE 120,20
Title Downloading Sku RUS For Black Ice...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 5362991837480196824 -username %username% -remember-password -dir "Downloads\Y1S1_BlackIce" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusdustline
MODE 120,20
Title Downloading Sku RUS For Dust Line...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3040224537841664111 -username %username% -remember-password -dir "Downloads\Y1S2_DustLine" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:russkullrain
MODE 120,20
Title Downloading Sku RUS For Skull Rain...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 2956768406107766016 -username %username% -remember-password -dir "Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusredcrow
MODE 120,20
Title Downloading Sku RUS For Red Crow...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 912564683190696342 -username %username% -remember-password -dir "Downloads\Y1S4_RedCrow" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusvelvetshell
MODE 120,20
Title Downloading Sku RUS For Velvet Shell...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 2687181326074258760 -username %username% -remember-password -dir "Downloads\Y2S1_VelvetShell" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rushealth
MODE 120,20
Title Downloading Sku RUS For Health...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 8542242518901049325 -username %username% -remember-password -dir "Downloads\Y2S2_Health" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusbloodorchid
MODE 120,20
Title Downloading Sku RUS For Blood Orchid...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 4662662335520989204 -username %username% -remember-password -dir "Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:ruswhitenoise
MODE 120,20
Title Downloading Sku RUS For White Noise...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 8421028160473337894 -username %username% -remember-password -dir "Downloads\Y2S4_WhiteNoise" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:ruschimera
MODE 120,20
Title Downloading Sku RUS For Chimera...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 4768963659370299631 -username %username% -remember-password -dir "Downloads\Y3S1_Chimera" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusparabellum
MODE 120,20
Title Downloading Sku RUS For Para Bellum...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 7995779530685147208 -username %username% -remember-password -dir "Downloads\Y3S2_ParaBellum" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusgrimsky
MODE 120,20
Title Downloading Sku RUS For Grim Sky...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3144556314994867170 -username %username% -remember-password -dir "Downloads\Y3S3_GrimSky" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:ruswindbastion
MODE 120,20
Title Downloading Sku RUS For Wind Bastion...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3144556314994867170 -username %username% -remember-password -dir "Downloads\Y3S4_WindBastion" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusburnthorizon
MODE 120,20
Title Downloading Sku RUS For Burnt Horizon...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3777349673527123995 -username %username% -remember-password -dir "Downloads\Y4S1_BurntHorizon" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusphantomsight
MODE 120,20
Title Downloading Sku RUS For Phantom Sight...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3326664059403997209 -username %username% -remember-password -dir "Downloads\Y4S2_PhantomSight" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusemberrise
MODE 120,20
Title Downloading Sku RUS For Ember Rise...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 684480090862996679 -username %username% -remember-password -dir "Downloads\Y4S3_EmberRise" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:russhiftingtides
MODE 120,20
Title Downloading Sku RUS For Shifting Tides...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 510172308722680354 -username %username% -remember-password -dir "Downloads\Y4S4_ShiftingTides" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:rusvoidedge
MODE 120,20
Title Downloading Sku RUS For Void Edge...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 2583838033617047180 -username %username% -remember-password -dir "Downloads\Y5S1_VoidEdge" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:russteelwave
MODE 120,20
Title Downloading Sku RUS For Steel Wave...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 5838065097101371940 -username %username% -remember-password -dir "Downloads\Y5S2_SteelWave" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:russhadowlegacy
MODE 120,20
Title Downloading Sku RUS For Shadow Legacy...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 4020038723910014041 -username %username% -remember-password -dir "Downloads\Y5S3_ShadowLegacy" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:neondawn
MODE 120,20
Title Downloading Sku RUS For Neon Dawn...
echo [1m[93m
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 3560446343418579092 -username %username% -remember-password -dir "Downloads\Y5S4_RoadToSI_AW" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:crimsonheist
MODE 120,20
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 6130917224459224462 -username %username% -remember-password -dir "Downloads\Y6S1_ToyRainbow" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:northstar
MODE 120,20
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 6767916709017546201 -username %username% -remember-password -dir "Downloads\Y6S2_NestDestruction" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:ruscrystalguard
MODE 120,20
dotnet Resources\DepotDownloader.dll -app 359550 -depot 377238 -manifest 5161489294178683219 -username %username% -remember-password -dir "Downloads\Y6S3_CrystalGuard" -validate -max-servers 15 -max-downloads 10 [0m
pause
goto downloadcomplete

:downloadcomplete
MODE 70,6
Title Download Complete
cls
echo [0m[7mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3                         Download Complete!                         3
echo AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU[0m
echo.
Resources\cmdMenuSel f870 "                               Continue"
echo.
echo.
if %ERRORLEVEL% == 1 goto mainmenu





:guidefaq
Title Installation Guide and FAQ
cls
MODE 41,10
echo [1mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3 Click on what you would like to read. 3
echo AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU[0m
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
echo [1mÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3 1) In the main menu of the downloader, select 'Game Downloader' and choose which version you want to download.                     3
echo 3    Enter the username and password for the Steam account you have a copy of Rainbow Six Siege on. The download should start.       3
echo 3    (If you want to download 4K textures or extra languages, follow the same steps,                                                 3
echo 3    and you can enable 4K textures / select different languages in-game).                                                           3
echo 3                                                                                                                                    3
echo 3 2) Once you have that done just launch the game by double-clicking RainbowSix.exe in the 'Downloads' folder where the downloader   3
echo 3    is located. If the RainbowSixGame.exe exist start that ^!                                                                        3
echo 3                                                                                                                                    3
echo 3 3) Please DONT Use this Tool on your OneDrive! You will probably get errors! Also, dont run the tool inside of any ZIP viewer      3
echo 3                                                                                                                                    3
echo 3ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ3
echo 3 Note : To play with other people, download Radmin Server at https://radmin-vpn.com/ then create or join a private network.         3
echo 3 Then create or join a local custom game and wait for other people to join.                                                         3
echo AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU[0m
echo.
Resources\cmdMenuSel f870 "  <- Back to Guide and FAQ"
if %ERRORLEVEL% == 1 goto guidefaq



:faq
Title FAQ
cls
Mode 137,36
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ?
echo 3   [1mQ: Is it safe to enter my password?[0m                                                                                                 3
echo 3 [92m# A: Yes it is. You can view the source code for Depot Downloader here:[0m https://github.com/SteamRE/DepotDownloader/                   3
echo 3                                                                                                                                       3
echo 3   [1mQ: Why do I get 'Invalid Password' after entering my Steam credentials?[0m                                                             3
echo 3 [92m# A: You are supposed to enter your LEGACY Steam username, not your profile name (the username you normally use to login to Steam)[0m    3
echo 3                                                                                                                                       3
echo 3   [1mQ: Why does it say 'Download Complete' immediately after entering a download option?[0m                                                3
echo 3 [92m# A: You need to download .NET Core from the #game-downloads in the Operation Throwback Discord server before you run the downloader[0m  3
echo 3                                                                                                                                       3
echo 3   [1mQ: Why can't I see my password while I'm typing?[0m                                                                                    3
echo 3 [92m# A: Your password is being entered as invisible[0m                                                                                      3
echo 3                                                                                                                                       3
echo 3   [1mQ: Where can I change my name?[0m                                                                                                      3
echo 3 [92m# A: In the Codex.ini file line 28 "UserName=CODEX"[0m                                                                                   3
echo 3                                                                                                                                       3
echo 3   [1mQ: Why is my game crashing at the start screen?[0m                                                                                     3
echo 3 [92m# A: In the Codex.ini file line 20 "GameName=RainbowSixSiege" change it to something else[0m                                             3
echo 3                                                                                                                                       3
echo 3   [1mQ: Why am I getting "Encountered unexpected error downloading chunk xxxxxxxxxxxx: The operation was canceled." errors?[0m              3
echo 3 [92m# A: Getting errors while downloading is normal[0m                                                                                       3
echo 3                                                                                                                                       3
echo 3   [1mQ: Why am I getting the error 'Missing steam_api64.dll'[0m                                                                             3
echo 3 [92m# A: Blacklist the files in your antivirus so the crack files aren't deleted[0m                                                          3
echo 3                                                                                                                                       3
echo 3   [1mQ: Why does the steam version of the game launch when I try to run RainbowSix.exe?[0m                                                  3
echo 3 [92m# A: Same answer as above[0m                                                                                                             3
echo 3                                                                                                                                       3
echo 3   [1mQ: Why is my download stuck at X percent?[0m                                                                                           3
echo 3 [92m# A: The last few files in a build are larger than the rest and may take longer to download, please be patient.[0m                       3
echo 3      [92mBest way to tell if it's still working is to check if it's using your network in task manager.[0m                                   3
echo AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU
echo                        Any CPlay / UPCR1 / Lumaplay error/fail , please contact SlejmUr or other helpers!
echo.
Resources\cmdMenuSel f870 "  <- Back to Guide and FAQ"
if %ERRORLEVEL% == 1 goto guidefaq
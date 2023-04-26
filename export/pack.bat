@echo off

if not exist "display_measure-for-GMS1" mkdir "display_measure-for-GMS1"
cmd /C copyre ..\display_measure.gmx\extensions\display_measure.extension.gmx display_measure-for-GMS1\display_measure.extension.gmx
cmd /C copyre ..\display_measure.gmx\extensions\display_measure display_measure-for-GMS1\display_measure
cmd /C copyre ..\display_measure.gmx\datafiles\display_measure.html display_measure-for-GMS1\display_measure\Assets\datafiles\display_measure.html
cd display_measure-for-GMS1
cmd /C 7z a display_measure-for-GMS1.7z *
move /Y display_measure-for-GMS1.7z ../display_measure-for-GMS1.gmez
cd ..

if not exist "display_measure-for-GMS2\extensions" mkdir "display_measure-for-GMS2\extensions"
if not exist "display_measure-for-GMS2\datafiles" mkdir "display_measure-for-GMS2\datafiles"
if not exist "display_measure-for-GMS2\datafiles_yy" mkdir "display_measure-for-GMS2\datafiles_yy"
cmd /C copyre ..\display_measure_yy\extensions\display_measure display_measure-for-GMS2\extensions\display_measure
cmd /C copyre ..\display_measure_yy\datafiles\display_measure.html display_measure-for-GMS2\datafiles\display_measure.html
cmd /C copyre ..\display_measure_yy\datafiles_yy\display_measure.html.yy display_measure-for-GMS2\datafiles_yy\display_measure.html.yy
cd display_measure-for-GMS2
cmd /C 7z a display_measure-for-GMS2.zip *
move /Y display_measure-for-GMS2.zip ../display_measure-for-GMS2.yymp
cd ..

if not exist "display_measure-for-GMS2.3+\extensions" mkdir "display_measure-for-GMS2.3+\extensions"
if not exist "display_measure-for-GMS2.3+\datafiles" mkdir "display_measure-for-GMS2.3+\datafiles"
cmd /C copyre ..\display_measure_23\extensions\display_measure display_measure-for-GMS2.3+\extensions\display_measure
cmd /C copyre ..\display_measure_23\datafiles\display_measure.html display_measure-for-GMS2.3+\datafiles\display_measure.html
cd display_measure-for-GMS2.3+
cmd /C 7z a display_measure-for-GMS2.3+.zip *
move /Y display_measure-for-GMS2.3+.zip ../display_measure-for-GMS2.3+.yymps
cd ..

del /Q display-measure-demo.yyz
cd ..\display_measure_23
rmdir /Q /S #backups
cmd /C 7z a ..\export\display-measure-demo.yyz *
cd ..\export

pause
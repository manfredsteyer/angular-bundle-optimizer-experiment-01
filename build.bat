REM NOT USING

xcopy src\app\app.component.html.bak src\app\app.component.html /y

rd dist /S /Q
del dist_prod\*.* /S /Q
call ng build --prod -sm --stats-json
xcopy dist dist_prod /Y

rd dist /S /Q
del dist_prod_bo\*.* /S /Q
call ng build --prod -bo -sm --stats-json
xcopy dist dist_prod_bo /Y

REM USING

xcopy src\app\app.component.html.use.bak src\app\app.component.html /y

rd dist /S /Q
del dist_prod_using\*.* /S /Q
call ng build --prod -sm --stats-json 
xcopy dist dist_prod_using /Y

rd dist /S /Q
del dist_prod_bo_using\*.* /S /Q
call ng build --prod -bo -sm --stats-json
xcopy dist dist_prod_bo_using /Y

REM GZIPPING

gzip dist_prod\*.js -k -f
gzip dist_prod_bo\*.js -k -f
gzip dist_prod_using\*.js -k -f
gzip dist_prod_bo_using\*.js -k -f
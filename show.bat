@echo off
dir dist_prod\*.js  
dir dist_prod_bo\*.js 
dir dist_prod_using\*.js 
dir dist_prod_bo_using\*.js 
echo #
echo # Gzipped
echo #
dir dist_prod\*.gz
dir dist_prod_bo\*.gz 
dir dist_prod_using\*.gz 
dir dist_prod_bo_using\*.gz 

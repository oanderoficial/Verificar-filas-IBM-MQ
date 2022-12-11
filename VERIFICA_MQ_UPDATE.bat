@echo off

title Verificacao MQ

color 0b

set data=%date%
cls

:menu
cls
echo =====================================================
echo Computador: %computername%		Usuario: %username%
echo.
echo %data%
echo.
echo  SCRIPT BY ANDERSON B SILVA 
echo =====================================================
echo 		Opcoes
echo =====================================================
echo *	     1. Verificar Fila                       *
echo *	     2. Verificar Canal                      *
echo *            3. VerifIcar Fila K8S                   *                                            
echo =====================================================

set /p opcao= Selecione uma opcao:

if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% GEQ 3 goto opcao3

:opcao1
cls
echo =====================================================
echo *         Informe  primeiro o Queue manager         *
echo *         Depois a fila                             *
echo *         Formato em MAISUCULO                      *
echo *         Exemplo: SPG1.LGPX.AC409N01               * 
echo *         O valor do campo CURDEPTH deve ser 0      *
echo =====================================================

set /P VALORES=Digite Queue manager: 
set /P FILA=Digite a Fila: 

:Loop
echo DIS QS (%VALORES%) curdepth | runmqsc %FILA% | findstr CURDEPTH

timeout /t 2

goto :Loop


:opcao2
cls
echo =====================================================
echo *         Informe primeiro o Queue manager,         *
echo *          Depois o canal                           *
echo *         Formato em MAISUCULO                      *
echo *         Exemplo: SPG1.LGPX.AC409N01               * 
echo *         O valor do campo CURDEPTH deve ser 0      *
echo =====================================================

set /P VALORES=Digite Queue manager: 
set /P FILA=Digite o canal:

goto :Loop
echo DIS QS (%VALORES%) curdepth | runmqsc %FILA% | findstr CURDEPTH

timeout /t 2

goto :Loop


:opcao3
cls
echo =====================================================
echo *         Informe  primeiro o Queue manager         *
echo *         Depois a fila                             *
echo *         Formato em MAISUCULO                      *
echo *         Exemplo: LPC1.BPMS.LGPV.MSTVF78           * 
echo *         O valor do campo CURDEPTH deve ser 0      *
echo =====================================================

set /P VALORES=Digite Queue manager: 
set /P FILA=Digite a Fila: 

goto :Loop
echo DIS QS (%VALORES%) curdepth | runmqsc %FILA% | findstr CURDEPTH

timeout /t 2

)


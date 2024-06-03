# Verificar-filas-IBM-MQ

<strong>Documentação >> https://www.ibm.com/docs/pt-br/ibm-mq/9.3?topic=windows-installing-mq-server</strong>
<strong> Verificar-filas-IBM-MQ </strong>  
<br>
<p> Este script tem como objetivo verificar a profundidade atual de uma fila ou canal no IBM MQ. </p>

<strong> Verificar mensagem no Queue Manager. </strong> 
```
echo DIS QS(<nomefila>) curdepth | runmqsc <NOMEQUEUEMANAGER>
```
<strong> Exemplo: </strong> 
```
echo DIS QS(TEST.RUNMSC.1.FILA.CARGO.0001)  curdepth | runmqsc TESB1
```
<strong>Verificar versão do MQ </strong> 
```
dspmqver
```
<strong> Saída: </strong> 

![image](https://github.com/oanderoficial/Verificar-filas-IBM-MQ/assets/32654298/8f190d4c-485e-4092-8f4b-df149fd6e31f)

<strong> IBM MQ Instalação: </strong>

Windows >> https://www.ibm.com/docs/pt-br/ibm-mq/9.3?topic=windows-installing-mq-server

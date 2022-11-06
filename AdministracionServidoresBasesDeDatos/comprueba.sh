#!/bin/bash

disco=$(df /|egrep /|awk {'print$3'}) 
let minimodisco=6710886,4

if [ $disco -gt $minimodisco ]; then
	echo "Espacio en disco suficiente ->" else
	echo "No tiene espacio en disco suficiente ->"
fi 
echo $disco



memoria=$(grep MemTotal /proc/meminfo|awk {'print$2'})
let minimomemoria=1048576

if [ $memoria -gt $minimomemoria ]; then
	echo "Memoria RAM suficiente ->"
else
	echo "No tiene memoria RAM suficiente ->"
fi
echo $memoria



arquitectura=$(uname -m)
minimoarquitectura="x86_64"

if [ $arquitectura = $minimoarquitectura ]; then
	echo "Arquitectura Adecuada ->"
else
	echo "Arquitectura Inadecuada ->"
fi
echo $arquitectura



#runlevel=$(runlevel)
#minimorunlevel="N 3"

#if [ $runlevel = $minimorunlevel ]; then
#	echo "RunLevel Adecuado ->"
#else
#	echo #RunLevel Inadecuado ->#
#fi
#echo $runlevel



#swap=$(free|grep Swap|awk {'print$2'})
#((minimoswap=memoria*3))
#echo $minimoswap
#((minimoswap=memoria/2))
#echo $minimoswap
#
#echo $minimoswap


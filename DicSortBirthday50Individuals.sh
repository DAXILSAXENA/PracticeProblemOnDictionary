#! /bin/bash -x

january=0
february=1
march=2
april=3
May=4
june=5
july=6
august=7
september=8
october=9
november=10
december=11

for (( individual=1;individual<51;individual++ ))
do
a=$(( RANDOM%12 ))
Birthday[((individual))]=$a
done

        jan=0
        feb=0
        mar=0
        apr=0
        may=0
        jun=0
        jul=0
        aug=0
        sep=0
        oct=0
        nov=0
        dec=0

for key in ${!Birthday[*]}
do
        type=${Birthday[$key]}


        if [ $type == 0 ]
        then
        january[((jan))]=$key
        (( jan++ ))
        elif [ $type == 1 ]
        then
        february[((feb))]=$key
        (( feb++ ))
        elif [ $type == 2 ]
        then
        march[((mar))]=$key
        (( mar++ ))
        elif [ $type == 3 ]
        then
        april[((apr))]=$key
        (( apr++ ))
        elif [ $type == 4 ]
        then
        may[((may))]=$key
        (( may++ ))
        elif [ $type == 5 ]
        then
        june[((jun))]=$key
        (( jun++ ))
        elif [ $type == 6 ]
        then
        july[((jul))]=$key
        (( jul++ ))
        elif [ $type == 7 ]
        then
        august[((aug))]=$key
        (( aug++ ))
        elif [ $type == 8 ]
        then
        september[((sep))]=$key
        (( sep++ ))
        elif [ $type == 9 ]
        then
        october[((oct))]=$key
        (( oct++ ))
        elif [ $type == 10 ]
        then
        november[((nov))]=$key
        (( nov++ ))
        else
        december[((dec))]=$key
        (( dec++ ))
        fi
done

echo Individuals having Birtday in January are
echo ${january[*]}
echo Total Individuals:$jan
echo " "


echo Individuals having Birtday in Fanuary are
echo ${february[*]}
echo Total Individuals:$feb
echo " "

echo Individuals having Birtday in March are
echo ${march[*]}
echo Total Individual:$mar
echo " "

echo Individuals having Birtday in April are
echo ${april[*]}
echo Total Individulas:$apr
echo " "

echo Individuals having Birtday in May are
echo ${may[*]}
echo Total Individuals:$may
echo " "

echo Individuals having Birtday in June are
echo ${june[*]}
echo Total Individuals:$jun
echo " "

echo Individuals having Birtday in July are
echo ${july[*]}
echo Total Individuals:$jul
echo " "

echo Individuals having Birtday in August are
echo ${august[*]}
echo Total Individuals:$aug
echo " "

echo Individuals having Birtday in September are
echo ${september[*]}
echo Total Individuals:$sep
echo " "

echo Individuals having Birtday in October are
echo ${october[*]}
echo Total Individuals:$oct
echo " "

echo Individuals having Birtday in November are
echo ${november[*]}
echo Total Individuals:$nov
echo " "

echo Individuals having Birtday in December are
echo ${december[*]}
echo Total Individuals:$dec

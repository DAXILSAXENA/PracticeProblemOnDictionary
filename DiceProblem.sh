#! /bin/bash/ -x

one=0
two=0
three=0
four=0
five=0
six=0

declare -A dice

# Storing Random output of a dice in a dictionary

while [ $one -lt 10 ] && [ $two -lt 10 ] && [ $three -lt 10 ] && [ $four -lt 10 ] && [ $five -lt 10 ] && [ $six -lt 10 ]

do
a=$(( RANDOM%6 + 1 ))

if [ $a -eq 1 ]
then
(( one ++ ))
dice[1]=$one
elif [ $a -eq 2 ]
then
(( two ++ ))
dice[2]=$two
elif [ $a -eq 3 ]
then
(( three ++ ))
dice[3]=$three
elif [ $a -eq 4 ]
then
(( four ++ ))
dice[4]=$four
elif [ $a -eq 5 ]
then
(( five ++ ))
dice[5]=$five
elif [ $a -eq 6 ]
then
(( six ++ ))
dice[6]=$six
fi
done

# Display dice face value and number of its occurence

echo ${!dice[*]}
echo ${dice[*]}

# Maximum occured face value

for key in ${!dice[*]}
do
        temp=${dice[$key]}
        if [ $temp -eq 10 ]
        then
        echo Number which occured maximum number of times $key
        break
        fi
done

# Minimum occured face value

min=10

for (( i=1;i<7;i++ ))
do
        if [ ${dice[$i]} -lt $min ]
        then
        min=${dice[$i]}
        j=$i
        fi
done

echo Number which occured minimum number of times $j

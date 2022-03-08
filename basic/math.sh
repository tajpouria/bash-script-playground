arr=(
	1
	2
	3
)

arr_len=${#arr[@]}


res=$(expr $arr_len - 1)

res2=$(expr $arr_len \* 2)

echo $res
echo $res2

echo '---'

add_res=$(expr 20 + 8)
sub_res=$(expr 20 - 8)
mul_res=$(expr 20 \* 2)
div_res=$(expr 20 / 5)
rem_res=$(expr 12 % 7)

echo '$add_res is equal to '$add_res
echo '$sub_res is equal to '$sub_res
echo '$mul_res is equal to '$mul_res
echo '$div_res is equal to '$div_res
echo '$rem_res is equal to '$rem_res

echo '---'

num1=15
num2=10

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

echo "--"

echo "20 + 0.5"  | bc 
echo "20.5 / 5"  | bc -l
echo "scale=2; 20.5 / 5" | bc -l


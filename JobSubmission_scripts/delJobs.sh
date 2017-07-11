start=23682931
end_idx=23683330

for i in $(seq $start $end_idx)
do 
    qdel $i
done

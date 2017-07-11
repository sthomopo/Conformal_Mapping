subj_list=/home/rcf-proj2/vg/Data/AD_DOD/Input_files/subj_list.txt
data_dir=/home/rcf-proj2/vg/Data/AD_DOD
while read line; do 
file=${data_dir}/$line/Vol_param/Models.mat

if [ ! -f $file ]; then
    echo $line
fi

done < ${subj_list}

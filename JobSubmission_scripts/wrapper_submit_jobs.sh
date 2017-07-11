data_dir=/home/rcf-proj2/vg/Data/AD_DOD/Input_files
base_dir=/home/rcf-proj2/vg/Data/AD_DOD

while read line; do 
input_file=$data_dir/input_file_${line}.txt
# qsub -v subj=$line submit_jobs.sh
#qsub -v subj=$line submit_jobs_indv_subjs.sh


bash call_MapTracks_atomic_indv_subjs.sh $base_dir $line $input_file

done < ${data_dir}/temp_subj_list.txt

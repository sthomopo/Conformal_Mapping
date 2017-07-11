data_dir=/home/rcf-proj2/vg/Data/AD_DOD/Input_files
while read line; do 
qsub -v subj=$line submit_jobs_training_data.m
done < ${data_dir}/training_subj_list.txt

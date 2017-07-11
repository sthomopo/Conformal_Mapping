#PBS -l walltime=12:00:00
#PBS -N MapTracks
#PBS -o /home/rcf-proj2/vg/Softwares/Volumetric_Parameterization/JobSubmission_scripts_1/logs
#PBS -j oe 

source /usr/usc/matlab/default/setup.sh
matlab_dir=/usr/usc/matlab/R2017a/bin

#matlab scripts dir
dir=/home/rcf-proj2/vg/Softwares/Volumetric_Parameterization
cd ${dir}
subject=${subj}
d=$d

${matlab_dir}/matlab -nodesktop -nosplash -r "input_file='${input_file}', subj='$subj', d='$d' ; MapTracks_indv_subjs; exit;"


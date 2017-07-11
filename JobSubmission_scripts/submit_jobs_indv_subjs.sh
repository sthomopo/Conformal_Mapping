#!/bin/bash
#PBS -j oe
#PBS -N ConvertTrk2Cell
#PBS -o /home/rcf-proj2/vg/Softwares/Volumetric_Parameterization/JobSubmission_scripts_1/logs
#PBS -l walltime=4:00:00

#set environment
source /usr/usc/matlab/default/setup.sh
matlab_dir=/usr/usc/matlab/R2017a/bin

#matlab scripts dir
dir=/home/rcf-proj2/vg/Softwares/Volumetric_Parameterization
cd ${dir}

subject=${subj}
input_base_dir=/home/rcf-proj2/vg/Data/AD_DOD/Input_files
base_dir=/home/rcf-proj2/vg/Data/AD_DOD
input_file=${input_base_dir}/input_file_${subject}.txt

# ${matlab_dir}/matlab -nodesktop -nosplash -r "input_file='$input_file'; subj='$subj'; ComputeConformalMapping; exit;"
# ${matlab_dir}/matlab -nodesktop -nosplash -r "input_file='$input_file'; subj='$subj'; Wrapper_ConvertTrk2Cell_indv_subjs_mod; exit;"






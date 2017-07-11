base_dir=$1
subj=$2
input_file=$3

for j in `seq 1 40`
do
    trk_file=${base_dir}/Trk_2_Cell/All_fibers/Tracks_$j.mat
    map_file=${base_dir}/Mapped_tracks/Mapped_tracks_$j.mat
    echo $trk_file
    echo $map_file
    if [ -f $file ] && [ ! -f $map_file ]; then
         qsub -v subj=$subj,d=$j,input_file=$input_file /home/rcf-proj2/vg/Softwares/Volumetric_Parameterization/JobSubmission_scripts_1/Map_tracks_atomic.sh
    fi
done


data_dir=/home/rcf-proj2/vg/Data/AD_DOD/
out_dir=${data_dir}/Input_files
mkdir -p ${out_dir}

while read subj; do
file_name=$out_dir/input_file_${subj}.txt
FA_image=${data_dir}${subj}/MNI_2_FA/FA_image.nii
out_dir_param=${data_dir}${subj}/Vol_param
trk_file=${data_dir}${subj}/Tracks/${subj}_qball_pds_pico_trk.trk
trk_2_cell_dir=${data_dir}${subj}/Trk_2_Cell/
segmented_tracks=${data_dir}${subj}/06_segmented_tracks/
sep_Noisy_tracks=${data_dir}${subj}/SeparateNoisyTracks/


echo ${data_dir} > $file_name
echo ${subj} >> $file_name
echo ${out_dir_param} >> ${file_name}
echo ${trk_file} >> ${file_name}
echo ${trk_2_cell_dir} >> ${file_name}
echo ${segmented_tracks} >> ${file_name}
echo ${sep_Noisy_tracks} >> ${file_name}

done < ${data_dir}/subj_list_vol_param_complete.txt

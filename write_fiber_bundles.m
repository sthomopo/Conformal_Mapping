function  write_fiber_bundles(output_dir, start_idx, tracks)

num_tracks = length(tracks);
idx = start_idx;
for i = 1:num_tracks
    a=tracks{i};
    file_name = strcat(output_dir, '/Mapped_fiber_', num2str(idx), '.txt');
    fileID1 = fopen(file_name,'w');
    fprintf(fileID1,  '%6.5f \t %6.5f \t %6.5f\n' , a');    
    fclose(fileID1);
    b=flip(a);
    file_name = strcat(output_dir, '/Mapped_fiber_', num2str(idx+1), '.txt');
    fileID2 = fopen(file_name, 'w');
    fprintf(fileID1,  '%6.5f \t %6.5f \t %6.5f\n' , b');    
    fclose(fileID2);
    idx = idx +2;
       
 
end


end

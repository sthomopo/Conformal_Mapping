lib_path='/home/rcf-proj2/vg/Softwares/matlab_libs/'
vl_feat_setup= strcat(lib_path, 'vlfeat-0.9.20/toolbox/vl_setup.m');
run (vl_feat_setup);

Nifti_matlab_path=strcat(lib_path, 'NIfTI_20140122');
addpath(Nifti_matlab_path);

Tracvispath=strcat(lib_path, 'Trackvis-matlab/along-tract-stats-master/paths.m');
run(Tracvispath);

specClusteringpath=strcat(lib_path, 'spectralclustering-1.1');
addpath(specClusteringpath);

iso2meshpath=strcat(lib_path, 'iso2mesh');
addpath(iso2meshpath)

addpath(strcat(lib_path, 'geom3d-2016.03.02/geom3d/geom3d'));
addpath(strcat(lib_path, 'geom3d-2016.03.02/geom3d/meshes3d'));

addpath(strcat(lib_path, 'intriangulation'));
addpath(strcat(lib_path, 'inpolyhedron'));
addpath(strcat(lib_path, 'vectorized_meshgrid'));
addpath(strcat(lib_path, 'iso_surfs_mid'));

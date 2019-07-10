


#grympy 

mask=/share/apps/fsl/5.0.9/data/standard/MNI152_T1_2mm_brain_mask.nii.gz

datadir=/data/jux/BBL/projects/asl_pipeline/grmpy
scriptdir=/data/jux/BBL/projects/asl_pipeline/aslscript

mkdir $datadir/cbf1

flameo --copefile=${datadir}/cbfT.nii.gz  --mask=${mask}   --dm=${scriptdir}/grmpy_contrast.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/grmpgroup.grp --runmode=flame1 --ld=$datadir/cbf1


mkdir $datadir/cbfb

flameo --copefile=${datadir}/cbfbT.nii.gz  --mask=${mask}   --dm=${scriptdir}/grmpy_contrast.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/grmpgroup.grp --runmode=flame1 --ld=$datadir/cbfb

mkdir $datadir/cbfbs

flameo --copefile=${datadir}/cbfbsT.nii.gz  --mask=${mask}   --dm=${scriptdir}/grmpy_contrast.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/grmpgroup.grp --runmode=flame1 --ld=$datadir/cbfbs


mkdir $datadir/cbfbpv

flameo --copefile=${datadir}/cbfbpvT.nii.gz  --mask=${mask}   --dm=${scriptdir}/grmpy_contrast.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/grmpgroup.grp --runmode=flame1 --ld=$datadir/cbfbpv

mkdir $datadir/cbfscore

flameo --copefile=${datadir}/cbfscoreT.nii.gz  --mask=${mask}   --dm=${scriptdir}/grmpy_contrast.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/grmpgroup.grp --runmode=flame1 --ld=$datadir/cbfscore

mkdir $datadir/cbfscrub

flameo --copefile=${datadir}/cbfsrcubT.nii.gz  --mask=${mask}   --dm=${scriptdir}/grmpy_contrast.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/grmpgroup.grp --runmode=flame1 --ld=$datadir/cbfscrub



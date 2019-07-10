

mask=/data/jux/BBL/projects/asl_pipeline/aslscript/pncmask.nii.gz

datadir=/data/jux/BBL/projects/asl_pipeline/pnc
scriptdir=/data/jux/BBL/projects/asl_pipeline/aslscript



flameo --copefile=${datadir}/cbfT.nii.gz  --mask=${mask}   --dm=${scriptdir}/pnc_design.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/pncgroup.grp  --runmode=flame1 --ld=$datadir/cbf1




flameo --copefile=${datadir}/cbfbT.nii.gz  --mask=${mask}   --dm=${scriptdir}/pnc_design.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/pncgroup.grp  --runmode=flame1 --ld=$datadir/cbfb



flameo --copefile=${datadir}/cbfbsT.nii.gz  --mask=${mask}   --dm=${scriptdir}/pnc_design.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/pncgroup.grp  --runmode=flame1 --ld=$datadir/cbfbs




flameo --copefile=${datadir}/cbfbpvT.nii.gz  --mask=${mask}   --dm=${scriptdir}/pnc_design.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/pncgroup.grp  --runmode=flame1 --ld=$datadir/cbfbpv



flameo --copefile=${datadir}/cbfscoreT.nii.gz  --mask=${mask}   --dm=${scriptdir}/pnc_design.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/pncgroup.grp  --runmode=flame1 --ld=$datadir/cbfscore



flameo --copefile=${datadir}/cbfsrcubT.nii.gz  --mask=${mask}   --dm=${scriptdir}/pnc_design.mat --tc=${scriptdir}/contrast.con --cs=${scriptdir}/pncgroup.grp  --runmode=flame1 --ld=$datadir/cbfscrub


 
id=$(cat /data/jux/BBL/projects/asl_pipeline/aslscript/grmpyid.txt)

datadir=//data/jux/BBL/projects/asl_pipeline/grmpy/cbf/

sumam=/data/jux/BBL/projects/asl_pipeline/aslscript/grmpy_negvoxel.csv
rm -rf $sumam
echo id0,cbf_neg,cbfb_neg,cbfbs_neg,cbfbpv_neg,cbfscore_neg,cbfscrub_neg > $sumam

for j in $id; do 

gmmask=$(ls -f $datadir/$j/coreg/*gm2seq.nii.gz)

img6=$(ls -f $datadir/$j/cbf/*meanPerfusion.nii.gz)
img1=$(ls -f $datadir/$j/basil/*cbf_basil.nii.gz)
img2=$(ls -f $datadir/$j/basil/*cbf_basil_spatial.nii.gz)
img3=$(ls -f $datadir/$j/basil/*cbf_basil_pv.nii.gz)
img4=$(ls -f $datadir/$j/score/*cbfscore.nii.gz)
img5=$(ls -f $datadir/$j/scrub/*cbfscrub.nii.gz)

neg6=($(fslstats $img6 -k $gmmask -u 0 -V))
neg1=($(fslstats $img1 -k $gmmask -u 0 -V))
neg2=($(fslstats $img2 -k $gmmask -u 0 -V))
neg3=($(fslstats $img3 -k $gmmask -u 0 -V))
neg4=($(fslstats $img4 -k $gmmask -u 0 -V))
neg5=($(fslstats $img5 -k $gmmask -u 0 -V))

 
echo $j,${neg6[0]},${neg1[0]},${neg2[0]},${neg3[0]},${neg4[0]},${neg5[0]} >> $sumam


done




id=$(cat /data/jux/BBL/projects/asl_pipeline/aslscript/pnc.txt)

datadir=//data/jux/BBL/projects/asl_pipeline/pnc/cbf/

sumam=/data/jux/BBL/projects/asl_pipeline/aslscript/pnc_negvoxel.csv
rm -rf $sumam
echo id0,cbf_neg,cbfb_neg,cbfbs_neg,cbfbpv_neg,cbfscore_neg,cbfscrub_neg > $sumam

for j in $id; do 

gmmask=$(ls -f $datadir/$j/*/coreg/*gm2seq.nii.gz)

img6=$(ls -f $datadir/$j/*/cbf/*meanPerfusion.nii.gz)
img1=$(ls -f $datadir/$j/*/basil/*cbf_basil.nii.gz)
img2=$(ls -f $datadir/$j/*/basil/*cbf_basil_spatial.nii.gz)
img3=$(ls -f $datadir/$j/*/basil/*cbf_basil_pv.nii.gz)
img4=$(ls -f $datadir/$j/*/score/*cbfscore.nii.gz)
img5=$(ls -f $datadir/$j/*/scrub/*cbfscrub.nii.gz)

neg6=($(fslstats $img6 -k $gmmask -u 0 -V))
neg1=($(fslstats $img1 -k $gmmask -u 0 -V))
neg2=($(fslstats $img2 -k $gmmask -u 0 -V))
neg3=($(fslstats $img3 -k $gmmask -u 0 -V))
neg4=($(fslstats $img4 -k $gmmask -u 0 -V))
neg5=($(fslstats $img5 -k $gmmask -u 0 -V)) 

 
echo $j,${neg6[0]},${neg1[0]},${neg2[0]},${neg3[0]},${neg4[0]},${neg5[0]} >> $sumam


done








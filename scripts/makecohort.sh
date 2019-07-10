
grmpyid=$(cat /data/jux/BBL/projects/asl_pipeline/aslscript/grmpyid.csv)

anatdir=/data/jux/BBL/projects/distortioncorrrection/data/nofieldmap/fmriprep/
cbfdir=/data/jux/BBL/studies/grmpy/rawData/

cbfcohort=/data/jux/BBL/projects/asl_pipeline/aslscript/grympycohort.csv
rm -rf $cbfcohort
echo id0,img,anatdir > $cbfcohort
for i in $grmpyid; do 
     img=$(ls -f $cbfdir/${i}/*/ASL*ASL/nifti/*nii.gz)
     anat=$(ls -d $anatdir/sub-*$i/anat)
     echo $i,$img,$anat >> $cbfcohort 
done 






pncids=/data/jux/BBL/projects/asl_pipeline/aslscript/pncids.csv
structdir=/data/jux/BBL/projects/asl_pipeline/pnc/structural/
cbfdir=/data/joy/BBL/studies/pnc/rawData/
pnccohort=/data/jux/BBL/projects/asl_pipeline/aslscript/pncchort.csv
rm -rf $pnccohort

echo id0,id1,img,antsct > $pnccohort


 cat $pncids | while IFS="," read -r a b; 


do
   
   img=$(ls -f ${cbfdir}/${a}/${b}/ep2d_se_pcasl*/nifti/*pcasl*nii.gz)

   ants=$(ls -d ${structdir}/${a}/*/struc/)

   echo ${a},${b},$img,${ants} >>$pnccohort

done 

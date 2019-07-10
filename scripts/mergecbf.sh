  



id=$(cat /data/jux/BBL/projects/asl_pipeline/aslscript/grmpyid.txt)
ouputdir=/data/jux/BBL/projects/asl_pipeline/grmpy

mkdir -p ${ouputdir}


for j in $id; do 

  cbf=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/norm/*meanPerfusionStd.nii.gz)
  cbfb=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/norm/*cbfbasilStd.nii.gz)
  cbfbpv=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/norm/*cbfbasilspatialStd.nii.gz)
  cbfbs=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/norm/*cbfbasilpvStd.nii.gz)
  cbfsm=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/norm/*cbfscoreStd.nii.gz)
  cbfss=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/norm/*cbfscrubStd.nii.gz)
   

   echo ${cbf} >> /data/jux/BBL/projects/asl_pipeline/grmpy/cbf.csv
   echo ${cbfb} >> /data/jux/BBL/projects/asl_pipeline/grmpy/cbfb.csv
   echo ${cbfbpv} >> /data/jux/BBL/projects/asl_pipeline/grmpy/cbfbs.csv
   echo ${cbfbs} >> /data/jux/BBL/projects/asl_pipeline/grmpy/cbfbpv.csv
   echo ${cbfsm} >> /data/jux/BBL/projects/asl_pipeline/grmpy/cbfscore.csv
   echo ${cbfss} >> /data/jux/BBL/projects/asl_pipeline/grmpy/cbfscrub.csv

done

  fslmerge -t ${ouputdir}/cbfT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/grmpy/cbf.csv) 
  fslmerge -t ${ouputdir}/cbfbT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/grmpy/cbfb.csv)
  fslmerge -t ${ouputdir}/cbfbsT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/grmpy/cbfbs.csv) 
  fslmerge -t ${ouputdir}/cbfbpvT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/grmpy/cbfbpv.csv)
  fslmerge -t ${ouputdir}/cbfscoreT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/grmpy/cbfscore.csv) 
  fslmerge -t ${ouputdir}/cbfsrcubT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/grmpy/cbfscrub.csv) 





id=$(cat /data/jux/BBL/projects/asl_pipeline/aslscript/pnc.txt)
ouputdir=/data/jux/BBL/projects/asl_pipeline/pnc

mkdir -p ${ouputdir}


for j in $id; do 

  cbf=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/norm/*meanPerfusionStd.nii.gz)
  cbfb=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/norm/*cbfbasilStd.nii.gz)
  cbfbpv=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/norm/*cbfbasilspatialStd.nii.gz)
  cbfbs=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/norm/*cbfbasilpvStd.nii.gz)
  cbfsm=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/norm/*cbfscoreStd.nii.gz)
  cbfss=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/norm/*cbfscrubStd.nii.gz)
   

   echo ${cbf} >> /data/jux/BBL/projects/asl_pipeline/pnc/cbf.csv
   echo ${cbfb} >> /data/jux/BBL/projects/asl_pipeline/pnc/cbfb.csv
   echo ${cbfbpv} >> /data/jux/BBL/projects/asl_pipeline/pnc/cbfbs.csv
   echo ${cbfbs} >> /data/jux/BBL/projects/asl_pipeline/pnc/cbfbpv.csv
   echo ${cbfsm} >> /data/jux/BBL/projects/asl_pipeline/pnc/cbfscore.csv
   echo ${cbfss} >> /data/jux/BBL/projects/asl_pipeline/pnc/cbfscrub.csv

done

  fslmerge -t ${ouputdir}/cbfT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/pnc/cbf.csv) 
  fslmerge -t ${ouputdir}/cbfbT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/pnc/cbfb.csv)
  fslmerge -t ${ouputdir}/cbfbsT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/pnc/cbfbs.csv) 
  fslmerge -t ${ouputdir}/cbfbpvT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/pnc/cbfbpv.csv)
  fslmerge -t ${ouputdir}/cbfscoreT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/pnc/cbfscore.csv) 
  fslmerge -t ${ouputdir}/cbfsrcubT.nii.gz $(cat /data/jux/BBL/projects/asl_pipeline/pnc/cbfscrub.csv)
 

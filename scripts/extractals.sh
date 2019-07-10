
id=$(cat /data/jux/BBL/projects/asl_pipeline/aslscript/grid.csv)
ouputdir=/data/jux/BBL/projects/asl_pipeline/aslscript/grmpymeancbf.csv

rm -rf ${ouputdir}

echo id0,cbf,basil,basilS,basilPV,cbfscore,cbfscrub > ${ouputdir}

for j in $id; do 

  gm=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/$j/coreg/*gm2seq.nii.gz)
 
  cbf=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/cbf/*meanPerfusion.nii.gz)
  cbfb=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/basil/*cbf_basil.nii.gz)
  cbfbpv=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/basil/*cbf_basil_spatial.nii.gz)
  cbfbs=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/basil/*cbf_basil_pv.nii.gz)
  cbfsm=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/score/*cbfscore.nii.gz)
  cbfss=$(ls -f /data/jux/BBL/projects/asl_pipeline/grmpy/cbf/${j}/scrub/*cbfscrub.nii.gz)

  fslmaths $gm -thr 0.8 -bin -mul  $cbf /tmp/cbf1.nii.gz 
  fslmaths $gm -thr 0.8 -bin -mul  $cbfb /tmp/cbfb1.nii.gz
  fslmaths $gm -thr 0.8 -bin -mul  $cbfbpv /tmp/cbfbv1.nii.gz 
  fslmaths $gm -thr 0.8 -bin -mul  $cbfbs /tmp/cbfbs1.nii.gz 
  fslmaths $gm -thr 0.8 -bin -mul  $cbfsm /tmp/cbfsm1.nii.gz 
  fslmaths $gm -thr 0.8 -bin -mul  $cbfss /tmp/cbfss1.nii.gz 

  
  gm1=$(fslstats /tmp/cbf1.nii.gz -M) 
  gm2=$(fslstats /tmp/cbfb1.nii.gz -M) 
  gm3=$(fslstats /tmp/cbfbv1.nii.gz -M) 
  gm4=$(fslstats /tmp/cbfbs1.nii.gz -M) 
  gm5=$(fslstats /tmp/cbfsm1.nii.gz -M)
  gm6=$(fslstats /tmp/cbfss1.nii.gz -M)


  echo $j,$gm1,$gm2,$gm3,$gm4,$gm5,$gm6 >> ${ouputdir} 
 
  rm -rf /tmp/cbf* 2>/dev/null
 
 
done 




id=$(cat /data/jux/BBL/projects/asl_pipeline/aslscript/pncid.csv)
ouputdir=/data/jux/BBL/projects/asl_pipeline/aslscript/pncmeancbf.csv

rm -rf ${ouputdir}

echo id0,cbf,basil,basilS,basilPV,cbfscore,cbfscrub > ${ouputdir}

for j in $id; do 

  gm=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/$j/*/coreg/*gm2seq.nii.gz)
 
  cbf=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/cbf/*meanPerfusion.nii.gz)
  cbfb=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/basil/*cbf_basil.nii.gz)
  cbfbpv=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/basil/*cbf_basil_spatial.nii.gz)
  cbfbs=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/basil/*cbf_basil_pv.nii.gz)
  cbfsm=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/score/*cbfscore.nii.gz)
  cbfss=$(ls -f /data/jux/BBL/projects/asl_pipeline/pnc/cbf/${j}/*/scrub/*cbfscrub.nii.gz)

  fslmaths $gm -thr 0.8 -bin -mul  $cbf /tmp/cbf1.nii.gz 
  fslmaths $gm -thr 0.8 -bin -mul  $cbfb /tmp/cbfb1.nii.gz
  fslmaths $gm -thr 0.8 -bin -mul  $cbfbpv /tmp/cbfbv1.nii.gz 
  fslmaths $gm -thr 0.8 -bin -mul  $cbfbs /tmp/cbfbs1.nii.gz 
  fslmaths $gm -thr 0.8 -bin -mul  $cbfsm /tmp/cbfsm1.nii.gz 
  fslmaths $gm -thr 0.8 -bin -mul  $cbfss /tmp/cbfss1.nii.gz 

  
  gm1=$(fslstats /tmp/cbf1.nii.gz -M) 
  gm2=$(fslstats /tmp/cbfb1.nii.gz -M) 
  gm3=$(fslstats /tmp/cbfbv1.nii.gz -M) 
  gm4=$(fslstats /tmp/cbfbs1.nii.gz -M) 
  gm5=$(fslstats /tmp/cbfsm1.nii.gz -M)
  gm6=$(fslstats /tmp/cbfss1.nii.gz -M)


  echo $j,$gm1,$gm2,$gm3,$gm4,$gm5,$gm6 >> ${ouputdir} 
 
  rm -rf /tmp/cbf* 2>/dev/null
 
 
done

















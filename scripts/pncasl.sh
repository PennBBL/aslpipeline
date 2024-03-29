FULL_COHORT=/data/jux/BBL/projects/asl_pipeline/aslscript/pncchort.csv

NJOBS=$(wc -l <  ${FULL_COHORT})
num=$(expr $NJOBS - 1);

SNGL=/share/apps/singularity/2.5.1/bin/singularity
SIMG=/data/joy/BBL/applications/bids_apps/xcpEngine.simg
DESIGN=/data/jux/BBL/projects/asl_pipeline/aslscript/designfiles/cbf_basil_score_scrub.dsn
OUTPUT=/data/jux/BBL/projects/asl_pipeline/pnc/cbf



HEADER=$(head -n 1 ${FULL_COHORT})
bb=$(seq 1 $num)

for j in $bb; do  
    l=$(expr $j + 1)
    LINE=$(awk "NR==$l" ${FULL_COHORT})
    TEMP_COHORT=${FULL_COHORT}.${j}.csv

    echo $HEADER > ${TEMP_COHORT}
    echo $LINE>> ${TEMP_COHORT}
 
    echo ${SNGL} run -B /data:/home/aadebimpe/data ${SIMG}  -c /home/aadebimpe${TEMP_COHORT}  -d /home/aadebimpe$DESIGN -o /home/aadebimpe$OUTPUT  -r /home/aadebimpe > pncasl_${j}.sh
  
    qsub  pncasl_${j}.sh

done

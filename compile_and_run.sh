
echo "[******* Benchmark start ********] $(pwd)"

EXEC=${EXEC:-"parallel original"}
BUILD=${BUILD:-"build"}
ROOTDIR=$(pwd)
LOGDIR=${LOGDIR:-${ROOTDIR}/log}
SRCDIR=${SRCDIR:-${ROOTDIR}/src}
cd ${SRCDIR}
for E in ${EXEC}; do
	echo "[******* Compile ${EXEC} ********]"

	cd ${SRCDIR}/${E}
	rm -rf ${BUILD}
	mkdir ${BUILD}
	cd ${BUILD}
	cmake .. 
	make -j4
done

cd ${ROOTDIR} # to root dir

OUTDIR=${OUTDIR:-${ROOTDIR}/desc}
KPTDIR=${KPTDIR:-${ROOTDIR}/kpts}
IMGNAME="train4.jpg"
IMGPATH=${IMGPATH:-${ROOTDIR}/imgs/${IMGNAME}}

NUM_THREADS_PARALLEL=${NUM_THREADS:-"1 2 4 8 16 32"}
NUM_THREADS_SERIAL="1"
NUM_KPTS=${NUM_KPTS:-"1000 2000 5000 10000"}
RUNS=${RUNS:-`seq 1 5`}

echo "$(pwd)"

for E in ${EXEC}; do
	echo "[******* Test ${E} ********]"
	NUM_THREADS=${NUM_THREADS_SERIAL}
	if [ ${E} == "parallel" ];
	then
		NUM_THREADS=${NUM_THREADS_PARALLEL}
	fi

	for K in ${NUM_KPTS}; do
		for T in ${NUM_THREADS}; do
			OUTF="${OUTDIR}/desc_${E}_${K}_${T}.txt"
		    LOGF="${LOGDIR}/log_${E}_${K}_${T}.txt"

		  	echo "${IMGNAME} - ${K} kpts - ${T} threads: "

			for R in ${RUNS}; do
				if [ ${E} == "parallel" ];
				then
					${SRCDIR}/${E}/build/ORBExtractor ${IMGPATH} ${KPTDIR}/keypoints_${K}.txt ${OUTF} ${T} > ${LOGF}
				else
					${SRCDIR}/${E}/build/ORBExtractor ${IMGPATH} ${KPTDIR}/keypoints_${K}.txt ${OUTF} > ${LOGF}
				fi
				DESC=`egrep -w "Descr Comp Time" ${LOGF}`
				COMP=`egrep -w "Total Comp Time" ${LOGF}`
				EXEC=`egrep -w "Total Exec Time" ${LOGF}`
				DESCTIME=${DESC:17:10}
				COMPTIME=${COMP:17:10}
				EXECTIME=${EXEC:17:10}
				echo " test ${R}: Descr Time: ${DESCTIME}; Comp Time: ${COMPTIME}; Exec Time: ${EXECTIME}"
			done
		done
	done
done
#!/bin/sh

#diff ./output_descriptors.txt ./build/output_descriptors.txt > log.txt
diff ./descriptor_test.txt ./build/descriptor_test.txt > log.txt

if [[ -s log.txt ]] ; then
echo "out put not correct"
exit 1
else
echo "success"
exit 0
fi ;
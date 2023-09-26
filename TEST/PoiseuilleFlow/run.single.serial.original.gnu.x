#!/bin/tcsh
#
setenv DIR RUN_SINGLE_SERIAL_ORIGINAL_GNU
setenv EXE bgk2d.serial.x
#
echo "-------------------------------"
echo "starting test Pouiselle flow   " 
echo " ---> nvfortran                "
echo " ---> single precision         "
echo " ---> original                 "
echo " ---> serial                   "
echo " ---> doconcurrent             "
echo " ---> "$EXE
echo " ---> "$DIR
echo "-------------------------------"
#
rm -r $DIR
mkdir $DIR
cd $DIR

# step 1: compiling
echo "step 1: compiling"
cd ../../../SRC
make clean
make serial FIX=" -DCHANNEL -DPGI" GNU=1
if ($?) then
   echo "compiling fails..."
   exit 1
else
   cd -
   cp ../../../RUN/$EXE  .
   cp ../bgk.input.small bgk.input 
   echo "compiling  ended succesfully..."
endif


# step 2: running test
echo "step 2: running test"
./$EXE >& out.log
if (-e "bgk.perf") then
   echo "run ended succesfully..."
else
   echo "running test fails..."
   exit 1
endif


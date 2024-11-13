## Download Nvidia application
 - Nsight System
 - Nsight Compute

- How to run nprofile.sh

- [] prof   = nsys or ncu or rtop 
     - nsys = Nsight system
     - ncu  = Nsight comute 
     - rtop = roofline analsys
- [] folderName = choose 
- [] bin = your binary 

./nprofile.sh $folderName $prof ./bin

### This will create the reports in the custom_reports directory instead of the default reports directory. 

### Download the files on your local machine and open with Nsight system or compute 

## Nsight compute for a particular kernel

 ncu --kernel-name bcond_driven_93_gpu --launch-skip 0 --launch-count 1  --set roofline --section SpeedOfLight -o ncu_prof -f "./bgk2d.openacc.x"



## Download these two application on your local machine 

- Nsight systems 
- Nsight compute

## How to run Nprofile 

- [] prof=nsys or ncu or rtop
   - [] nsys = only nsight systems
   - [] ncu  = nsight compute
   - [] rtop = Roofline analsysis 

./nprofile.sh folderName $prof ./binary

- [] Once you profile Nsight system you can select a particular kernel that you want to analysis with nsight compute 

## openACC
ncu --kernel-name bcond_driven_93_gpu --launch-skip 0 --launch-count 1  --set roofline --section SpeedOfLight -o ncu_prof -f "./bgk2d.openacc.x"


## openMP
ncu --kernel-name nvkernel_bcond_driven__F1L121_4_ --launch-skip 1 --launch-count 1  --set roofline --section SpeedOfLight -o ncu_omp "./bgk2d.offload.x"



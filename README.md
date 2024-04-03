# GiBUUr2023v2
    Create a new directory for GiBUU and change to that directory: 

mkdir GiBUU; cd GiBUU

    Download the source code: 

wget --content-disposition https://gibuu.hepforge.org/downloads?f=release2023.tar.gz
tar -xzvf release2023.tar.gz

    Download the input files: 

wget --content-disposition https://gibuu.hepforge.org/downloads?f=buuinput2023.tar.gz
tar -xzvf buuinput2023.tar.gz

#Compile GiBUU
cd release2023; make -j

#Run GiBUU
$GiBUUDIR location$/release2023/objects/GiBUU.x < $jobdir/005_Neutrino_MINERvA_nu_with_inmed_switches_r2023.job > numu.log

#Edit the jobcard! this job card in only used for r2023 release. 
! file: code/inputOutput/input.f90
   path_to_input=’<actual path of $GIBUUDIR>/buuinput2023’
   for test change the numEnsemble to 4 
   version = 2023 (otherwise it will not work)
! file: code/init/neutrino/neutrinoParms.f90
   apart of the isospin T=0. do not change the other option for this namliset

!seed (defined in the last line) is commented in this jobcard, as GiBUU change internally the seed for each run
for other options I added a comment front of the variable
the original jobcard can be found here: release2023/testRun/jobCards/005_Neutrino_MINERvA-nu_with_inmed_switches.job
the modification in this job has been cross checked by the developer

for r2021 release do not use the same jobcard, use numubarjob_r2021.job

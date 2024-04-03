# GiBUUr2023v2
    Create a new directory for GiBUU and change to that directory: 

mkdir GiBUU; cd GiBUU

    Download the source code: 

wget --content-disposition https://gibuu.hepforge.org/downloads?f=release2023.tar.gz
tar -xzvf release2023.tar.gz

    Download the input files: 

wget --content-disposition https://gibuu.hepforge.org/downloads?f=buuinput2023.tar.gz
tar -xzvf buuinput2023.tar.gz
    
    Compile GiBUU

cd release2023; make -j

    Run GiBUU

./release2023/objects/GiBUU.x < $jobdir/005_Neutrino_MINERvA_nu_with_inmed_switches_r2023.job > numu.log

    Editing the Job Card
    Note: This job card is only used for the r2023 release.

 - !File: `code/inputOutput/input.f90`
    - **Path to input:** Replace `<actual path of $GIBUUDIR>/buuinput2023` with the actual path.
    - For testing, change the `numEnsemble` to `4`.
    - `version = 2023` (this is necessary for r2023 release).

 - !File: `code/init/neutrino/neutrinoParms.f90`
    - apart of the isospin T=0. Do not change other options for this namliset.
  
 - The seed (defined in the last line) is commented out in this job card, as GiBUU internally changes the seed for each run.
 - For other options, a comment has been added in front of the variable.


        The original job card can be found here: `release2023/testRun/jobCards/005_Neutrino_MINERvA-nu_with_inmed_switches.job`. Modifications in this job have been cross-checked by the developer.

        **Important:** For the r2021 release, do not use the same job card. Instead, use `numubarjob_r2021.job`.



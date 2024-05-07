#!/bin/bash 

source /cvmfs/juno.ihep.ac.cn/centos7_amd64_gcc1120/Pre-Release/J23.1.x/setup.sh


cd ~/data$1/ 

/junofs/users/mariamrifai85/r2023_2/release2023/objects/GiBUU.x < 005_Neutrino_MINERvA_nu_with_inmed_switches.job > see_logfile.log

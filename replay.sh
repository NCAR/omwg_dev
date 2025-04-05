./case.setup

./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.build

./xmlchange STOP_N=5,RESUBMIT=3


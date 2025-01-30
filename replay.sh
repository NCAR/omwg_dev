./case.setup

./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.build

./xmlchange PROJECT=CESM0023

./xmlchange RESUBMIT=3

./case.submit


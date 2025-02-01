./case.setup

./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.build

./xmlchange RESUBMIT=3

./xmlchange PROJECT=CESM0023

./check_case

./case.submit

./xmlchange RESUBMIT=3,CONTINUE_RUN=False

./case.submit


./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.setup

./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.build

./xmlchange RESUBMIT=11

./check_case

./case.submit

./xmlchange RESUBMIT=0

./xmlchange RESUBMIT=9

./case.submit


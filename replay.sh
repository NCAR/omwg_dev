./case.setup

./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.build

./xmlchange RESUBMIT=3

./check_case

./case.submit

./xmlchange RESUBMIT=2

./case.submit

./xmlchange REST_N=1,REST_OPTION=nmonths

./xmlchange RESUBMIT=4

./case.submit

./xmlchange STOP_N=1


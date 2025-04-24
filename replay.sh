./case.setup

./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.build

./xmlchange STOP_N=5,RESUBMIT=3

./check_case

./case.submit

./case.submit

./xmlchange CONTINUE_RUN=False,STOP_OPTION=nmonths,STOP_N=2

./case.submit

./case.submit


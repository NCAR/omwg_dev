./case.setup

./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.build

./case.build --clean ocn

./case.build

./xmlchange RESUBMIT=3

./case.submit

./xmlchange RESUBMIT=0


./case.setup

./case.build

./xmlchange RESUBMIT=4

./case.submit

./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.build --clean-all


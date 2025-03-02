#!/bin/bash

set -e

# Created 2025-02-24 14:21:08

CASEDIR="/glade/work/gmarques/cesm.cases/G/g.e30_a06a.GJRAv4.TL319_t232_wgx3_hycom1_N75.2025.050"

/glade/work/gmarques/cesm.sandboxes/cesm3_0_alpha06a/cime/scripts/create_newcase --case g.e30_a06a.GJRAv4.TL319_t232_wgx3_hycom1_N75.2025.050 --compset 2000_DATM%JRA-1p4-2018_SLND_CICE_MOM6_DROF%JRA-1p4-2018_SGLC_WW3_SESP --res TL319_t232_wg37 --run-unsupported

cd "${CASEDIR}"

./case.setup

./case.setup

./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.build

./xmlchange STOP_OPTION=nyears,RESUBMIT=9

./xmlchange PROJECT=CESM0023

./check_case

./case.submit

./case.submit

./xmlchange RESUBMIT=2


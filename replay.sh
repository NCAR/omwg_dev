#!/bin/bash

set -e

# Created 2025-02-15 08:56:02

CASEDIR="/glade/work/gmarques/cesm.cases/G/g.e30_b05.GJRAv4.TL319_t232_wgx3_hycom1_N75.2025.042"

/glade/work/gmarques/cesm.sandboxes/cesm3_0_beta05/cime/scripts/create_newcase --case g.e30_b05.GJRAv4.TL319_t232_wgx3_hycom1_N75.2025.042 --compset 2000_DATM%JRA-1p4-2018_SLND_CICE_MOM6_DROF%JRA-1p4-2018_SGLC_WW3_SESP --res TL319_t232_wg37 --run-unsupported

cd "${CASEDIR}"

./case.setup

./xmlchange CASE_GIT_REPOSITORY=git@github.com:NCAR/omwg_dev.git

./case.build

./xmlchange PROJECT=CESM0023,RESUBMIT=3,STOP_OPTION=nyears

./check_case

./case.submit

./xmlchange RESUBMIT=3

./case.submit

./xmlchange RESUBMIT=3

./case.submit

./case.submit

./case.submit

